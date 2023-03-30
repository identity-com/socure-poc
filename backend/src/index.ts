import express from "express";
import cors from "cors";

import {
  Connection,
  clusterApiUrl
} from '@solana/web3.js';
import Storage from "./lib/Storage";
import {healthCheck, result, verify} from "./handlers";

const PORT: number = process.env.PORT ? parseInt(process.env.PORT as string, 10) : 80;

// TODO(julian): Should not be global
export const storage = new Storage('us-east-2', 'socure-pii-storage');
// TODO(julian): Should not be global
export const connection = new Connection(clusterApiUrl('devnet'), 'confirmed');

const main = async () => {
  const app = express();

  app.use(cors());
  app.use(express.json());

  app.get('/', healthCheck);
  app.post("/poc/verify", verify);
  app.post('/result', result);

  app.listen(PORT, () => console.log(`Listening on port ${PORT}`));
};


main().catch((err) => {
  throw new Error(err)
});

