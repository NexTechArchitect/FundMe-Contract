FundMe – Decentralized Funding Smart Contract

A lightweight decentralized funding contract written in Solidity, designed to accept ETH from users and allow the owner to withdraw all collected funds. This project demonstrates key smart-contract fundamentals including value transfers, access control, and gas-efficient development using Foundry.

Overview-

FundMe is a simple yet practical contract built to understand how real-world funding mechanisms work on-chain. Contributors can send ETH to the contract, and only the owner is permitted to withdraw the accumulated balance. The contract integrates Chainlink price feeds to enforce a USD-denominated minimum funding requirement.

Features-

Accepts ETH funding from any user
Enforces a minimum USD amount using Chainlink price feeds
Tracks each funder and their contributed amount
Owner-only withdrawal functionality
Gas-optimized using immutable and constant variables
Unit-tested with Foundry
Deployed and verified using Foundry scripts

Tech Stack

Solidity
Foundry (Forge, Cast, Anvil)
Chainlink Price Feeds
GitHub Actions (CI for tests)

Key Concepts Demonstrated-

Payable functions
Price feed integration
Conversion from ETH to USD
Access control (onlyOwner pattern)
Gas optimization using immutable, constant, and storage vs memory
Deployment scripting with Foundry
Unit testing with mock contracts

Contract Architecture

FundMe.sol

Core smart contract that handles:

Funding logic

Price conversion

State tracking

Owner-restricted withdrawals


Some Quick  Quick Commands  

```bash
# build contracts
forge build  

# run all tests
forge test -vv  

# local deploy
forge script script/DeployFundMe.s.sol  

# testnet deploy (Sepolia)
forge script script/DeployFundMe.s.sol --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast
