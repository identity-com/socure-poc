
** Frontend
The frontend launches the iframe for the socure backend. The iframe accepts an account as a parameter, and passes
it through to the socure validation process and included in all backend callbacks.

Start the frontend:
```bash
yarn workspace @identity.com/socure-poc-frontend start
```

** Backend
The backend is mainly responsible for handling callbacks from the socure process. The endpoint `/result` is responsible
for handling all callbacks.

Additional endpoints `/poc/*` is only used for the woocommerce frontend sight to provide Solana integration 
functionality not easily available in PHP (specifically regarding Borsch deserialization)

Start the backend:
```bash
yarn workspace @identity.com/socure-poc-backend start
```

** Store

The store is a standard Woocommerce site. The main plugin for handling the payment process is a modified version of
an existing plugin, located here: `store/wp-content/plugins/solpay-store`

*** Environment setup
Download MAMP https://www.mamp.info/en/downloads/
After install, the default settings are probably fine

Create a symlink so the webserver can access the store:
`sudo ln -s <repo>/store /Applications/MAMP/htdocs/socure`

Create database (default pass is `root`)
`mysql -h 127.0.0.1 -P 8889 -u root -p -e "CREATE DATABASE socure"`

Import data (default pass is `root`). From the repo root:
`mysql -h 127.0.0.1 -P 8889 -u root -p socure < store/database.sql`

Browse to http://localhost:8888/socure

