import express from "express";
import cors from "cors";
import {Wallet} from "@project-serum/anchor";
import {Account} from '@solana/spl-token/src/state/account';

import {
  Keypair,
  PublicKey,
  Connection,
  LAMPORTS_PER_SOL,
  Signer,
} from '@solana/web3.js';
import {getOrCreateAssociatedTokenAccount, createMint, mintTo} from '@solana/spl-token';
import Storage from "./lib/Storage";
import {
  GatekeeperService,
  NetworkService,
  airdrop,
  AdminService,
  FeeStructure,
  NetworkKeyFlags
} from '@identity.com/gateway-solana-client';
import {NetworkFeatures} from "@identity.com/gateway-solana-client/dist/lib/constants";
import {healthCheck, result, verify} from "./handlers";

const PORT: number = process.env.PORT ? parseInt(process.env.PORT as string, 10) : 80;

export const storage = new Storage('us-east-2', 'socure-pii-storage');

// Making these global for now, but we should probably move them into a class / config
// Only some of these get populated when it is not devnet use with caution
export let adminService: AdminService | undefined;
export let gatekeeperService: GatekeeperService | undefined;
export let networkService: NetworkService | undefined;

export let gatekeeperPDA: PublicKey | undefined;
export let stakingPDA: PublicKey | undefined;
export let mint: PublicKey | undefined;

export let adminAuthority: Keypair | undefined;
export let networkAuthority: Keypair | undefined;
export let gatekeeperAuthority: Keypair | undefined;
export let mintAuthority: Keypair | undefined;
export let mintAccount: Keypair | undefined;

export let gatekeeperAta: Account | undefined;
export let networkAta: Account | undefined;
export let funderAta: Account | undefined;
export let funderKeypair: Keypair | undefined;

let net: 'devnet' | 'localnet' = 'localnet';
export const connection = new Connection('http://127.0.0.1:8899', 'confirmed');

const main = async () => {
  const app = express();

  app.use(cors());
  app.use(express.json());

  app.get('/', healthCheck);
  app.post("/poc/verify", verify);
  app.post('/result', result);

  app.listen(PORT, preServerSetup);
};

const preServerSetup = async () => {
  // Set up gateway for localnet | devnet
  switch (net) {
    case 'localnet':
      // Set up localnet
      ({
        adminService,
        gatekeeperService,
        gatekeeperPDA,
        mint,
        adminAuthority,
        networkAuthority,
        gatekeeperAuthority,
        mintAuthority,
        mintAccount,
        stakingPDA,
        networkService,
      } = await setUpAdminNetworkGatekeeper());
      ({gatekeeperAta, networkAta, funderAta, funderKeypair} =
        await makeAssociatedTokenAccounts(
          connection,
          adminAuthority,
          mintAuthority,
          networkAuthority.publicKey,
          gatekeeperAuthority.publicKey,
          mintAccount.publicKey,
          gatekeeperPDA
        ));
      break;
    case 'devnet':
      // Set up devnet
      break;
  }

  console.log(`Listening on port ${PORT}`);
}

main().catch((err) => {
  throw new Error(err)
})

const setGatekeeperFlagsAndFees = async (
  stakingAccount: PublicKey,
  service: NetworkService,
  flags: number,
  feesToAdd: FeeStructure[] = []
): Promise<void> => {
  await service
    .updateGatekeeper(
      {
        authThreshold: 1,
        tokenFees: {
          remove: [],
          add: feesToAdd,
        },
        authKeys: {
          add: [
            {
              key: service.getWallet().publicKey,
              flags: flags,
            },
          ],
          remove: [],
        },
      },
      stakingAccount
    )
    .rpc();
};

const generateFundedKey = async (): Promise<Keypair> => {
  const keypair = Keypair.generate();
  await airdrop(
    connection,
    keypair.publicKey,
    LAMPORTS_PER_SOL
  );
  return keypair;
};

const setUpAdminNetworkGatekeeper = async (): Promise<{
  adminService: AdminService;
  networkService: NetworkService;
  gatekeeperService: GatekeeperService;
  gatekeeperPDA: PublicKey;
  stakingPDA: PublicKey;
  mint: PublicKey;
  adminAuthority: Keypair;
  networkAuthority: Keypair;
  gatekeeperAuthority: Keypair;
  mintAuthority: Keypair;
  mintAccount: Keypair;
}> => {
  const adminAuthority = await generateFundedKey();
  const networkAuthority = await generateFundedKey();
  const gatekeeperAuthority = await generateFundedKey();
  const mintAuthority = await generateFundedKey();
  const mintAccount = Keypair.generate();

  const mint = await createMint(
    connection,
    mintAuthority,
    mintAuthority.publicKey,
    null,
    0,
    mintAccount
  );

  const [gatekeeperPDA] = await NetworkService.createGatekeeperAddress(
    gatekeeperAuthority.publicKey,
    networkAuthority.publicKey
  );

  const [stakingPDA] = await NetworkService.createStakingAddress(
    gatekeeperAuthority.publicKey
  );

  const adminService = await AdminService.build(
    networkAuthority.publicKey,
    {
      clusterType: 'localnet',
      wallet: new Wallet(adminAuthority),
    },
  );

  const networkService = await NetworkService.build(
    gatekeeperAuthority.publicKey,
    gatekeeperPDA,
    {
      clusterType: 'localnet',
      wallet: new Wallet(gatekeeperAuthority),
    },
  );

  await adminService
    .createNetwork({
      authThreshold: 1,
      passExpireTime: 10000,
      fees: [
        {
          token: mint,
          issue: 10,
          refresh: 10,
          expire: 10,
          verify: 10,
        },
      ],
      authKeys: [
        {flags: NetworkKeyFlags.AUTH | NetworkKeyFlags.CREATE_GATEKEEPER, key: gatekeeperAuthority.publicKey},
      ],
      supportedTokens: [{key: mint}],
      networkFeatures: NetworkFeatures.CHANGE_PASS_GATEKEEPER,
    })
    .withPartialSigners(networkAuthority)
    .rpc();

  await networkService
    .createGatekeeper(
      networkAuthority.publicKey,
      stakingPDA,
      adminAuthority.publicKey
    )
    .withPartialSigners(adminAuthority)
    .rpc();

  await setGatekeeperFlagsAndFees(stakingPDA, networkService, 65535, [
    {
      token: mint,
      issue: 5000,
      refresh: 5000,
      expire: 5000,
      verify: 5000,
    },
  ]);

  const gatekeeperService = await GatekeeperService.build(
    networkAuthority.publicKey,
    gatekeeperPDA,
    {
      clusterType: 'localnet',
      wallet: new Wallet(gatekeeperAuthority),
    }
  );

  return {
    adminService,
    networkService,
    gatekeeperService,
    gatekeeperPDA,
    stakingPDA,
    mint,
    adminAuthority,
    networkAuthority,
    gatekeeperAuthority,
    mintAuthority,
    mintAccount,
  };
};

const makeAssociatedTokenAccounts = async (
  connection: Connection,
  adminAuthority: Signer,
  mintAuthority: Signer,
  networkPublicKey: PublicKey,
  gatekeeperPublicKey: PublicKey,
  mintPublicKey: PublicKey,
  gatekeeperPDA: PublicKey,
  funderMintAmount = 200000000
): Promise<{
  gatekeeperAta: Account;
  networkAta: Account;
  funderAta: Account;
  funderKeypair: Keypair;
}> => {
  const generateFundedKey = async (): Promise<Keypair> => {
    const keypair = Keypair.generate();
    await airdrop(
      connection,
      keypair.publicKey,
      LAMPORTS_PER_SOL
    );
    return keypair;
  };

  const funderKeypair = await generateFundedKey();

  const gatekeeperAta = await getOrCreateAssociatedTokenAccount(
    connection,
    adminAuthority,
    mintPublicKey,
    gatekeeperPDA,
    true
  );

  const networkAta = await getOrCreateAssociatedTokenAccount(
    connection,
    adminAuthority,
    mintPublicKey,
    networkPublicKey,
    true
  );

  const funderAta = await getOrCreateAssociatedTokenAccount(
    connection,
    adminAuthority,
    mintPublicKey,
    funderKeypair.publicKey,
    true
  );

  await mintTo(
    connection,
    funderKeypair,
    mintPublicKey,
    funderAta.address,
    mintAuthority,
    funderMintAmount
  );

  return {
    gatekeeperAta,
    networkAta,
    funderAta,
    funderKeypair,
  };
};
