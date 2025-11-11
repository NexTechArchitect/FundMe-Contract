
💜 FundMe Smart Contract  

🧠 A simple yet powerful "crowdfunding dApp" built with Solidity × Foundry    

 ⚙ Tech Stack  
✨ Solidity ^0.8.19  
🧱 Foundry (for testing + deployment)  
⛓ Ethereum Sepolia Testnet  
📡 Chainlink Price Feeds (for USD conversion)  


💫 What It Does  
Lets anyone fund ETH  
Tracks who sent how much  
Converts ETH → USD (thanks to Chainlink magic)  
Only the contract owner can withdraw (no rug pulls, promise 🤞)  
Fully tested with Foundry’s cheatcodes (because vibes ≠ bugs)  

🧰 Quick Commands  

```bash
# build contracts
forge build  

# run all tests
forge test -vv  

# local deploy
forge script script/DeployFundMe.s.sol  

# testnet deploy (Sepolia)
forge script script/DeployFundMe.s.sol --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast
