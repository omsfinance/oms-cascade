# OMS Cascade

In-depth documentation on Oms Cascade and how it integrates with the rest of the Oms Platform is available at [Oms.Finance](https://oms.finance/)

# Local Development

## Install dependencies 

`npm install`

## Compile contracts

`truffle compile --config truffle_config_v5.js`
`truffle compile --config truffle_config_v6.js`

## Run tests

`truffle test`

## Flatten file

`truffle-flattener contracts/v5/Cascade.sol > scratch/Cascade.sol`
`truffle-flattener contracts/v6/OmsX.sol > scratch/OmsX.sol`

Use the following if you want to flatten the contract and also process only one SPDX licence identifier.

`truffle-flattener contracts/v5/Cascade.sol | awk '/SPDX-License-Identifier/&&c++>0 {next} 1' > scratch/Cascade.sol`
`truffle-flattener contracts/v6/OmsX.sol | awk '/SPDX-License-Identifier/&&c++>0 {next} 1' > scratch/OmsX.sol`

## Start Eth95 to run a local client to be able to interact with the Ethereum blockchain

`npm run run95`

Open Eth95 in a browser by going to `http://localhost:3000/`