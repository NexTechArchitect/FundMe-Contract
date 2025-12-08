
FundMe ( Decentralized ETH Funding Contract )

FundMe is a minimal yet production-grade ETH funding contract built with Solidity and Foundry.
It demonstrates how Web3 applications handle value transfers, enforce pricing logic using oracles, and implement secure withdrawal patterns.
This repository serves as a strong reference for developers learning how decentralized funding flows operate on-chain.


Contract Overview:-

The FundMe contract allows any user to contribute ETH, while enforcing a minimum funding threshold defined in USD.
It integrates Chainlink's decentralized price feeds to ensure every deposit meets the required USD value at the current ETH price.
All collected funds can only be withdrawn by the contract owner, following strict access-control rules.


Core Features:-

Accepts ETH contributions from any externally-owned account.

Enforces a USD-denominated minimum contribution using Chainlink price feeds.

Tracks individual funders and their total contributions.

Implements owner-restricted withdrawals.

Optimized using immutable, constant, and minimal storage operations.

Tested using Foundry’s built-in unit testing framework and mocks.

Includes deployment scripts for local and testnet environments.


Technical Architecture:-

Handles all funding logic, including:

• Receiving ETH through payable functions.

• Converting ETH to USD using Chainlink AggregatorV3Interface.

• Maintaining a persistent record of funders and contribution amounts.

• Allowing only the contract owner to withdraw funds.

• Resetting contributor mappings after withdrawal.

• Gas-optimized owner storage using immutable.


Price Conversion Logic:-

The contract consumes real time price data from Chainlink feeds to calculate:

USD value = ETH amount × ETH/USD price

This ensures that the minimum funding threshold remains consistent regardless of ETH market volatility.


Development and Tooling:-

The project is fully built using Foundry and includes scripts for compilation, testing, deployment, and verification.

Install Foundry

curl -L https://foundry.paradigm.xyz | bash
foundryup

Build Contracts

forge build

Run Tests

forge test -vv

Local Deployment (Anvil)

forge script script/DeployFundMe.s.sol

Testnet Deployment (Sepolia)

forge script script/DeployFundMe.s.sol:DeployFundMe 
  --rpc-url $SEPOLIA_RPC_URL 
  --private-key $PRIVATE_KEY 
  --broadcast
  

Repository Structure:-
src/
   
    FundMe.sol

    PriceConverter.sol

script/

    DeployFundMe.s.sol

test/

    FundMeTest.t.sol

    IntegrationFundmeTest.t.sol
    
   
Each script focuses on a single action to maintain clarity, modularity, and easy execution.


Key Concepts Demonstrated:-


• Payable functions and ETH value transfer

• Price feed integration using Chainlink

• USD-based validation for ETH deposits

• onlyOwner withdrawal protection

• Immutable owner pattern

• Unit testing with mock price feeds

• Gas-efficient Solidity patterns

• Deployment automation with Foundry scripts


License
MIT License


Author

NEXTECHARHITECT
(Smart Contract Developer and Solidity, Foundry, Web3 Engineering)
