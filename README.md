# Loyalty Points Smart Contract

This project implements a blockchain-based **Loyalty Points System** using Solidity. The system allows an administrator to issue points to users, which they can later redeem. This is suitable for e-commerce platforms, subscription-based services, or any decentralized application (DApp) that wants to implement a rewards program.

## 📜 Features
- Issue loyalty points to users (admin only)
- Allow users to redeem their points
- Check balance of points
- Ownership transfer for administrative control

## 🛠️ Technologies
- Solidity `^0.8.20`
- Ethereum Virtual Machine (EVM)
- Hardhat / Remix (for development & testing)

## 📂 Contract Overview

### `LoyaltyPoints.sol`
- `issuePoints(address user, uint256 amount)` — Admin can issue points
- `redeemPoints(uint256 amount)` — User redeems points
- `checkPoints(address user)` — Check point balance
- `transferOwnership(address newOwner)` — Admin can transfer control

## 🚀 Getting Started

### Prerequisites
- Node.js
- Hardhat or Remix IDE

### Deploy (Sample Script)
```js
const LoyaltyPoints = await ethers.getContractFactory("LoyaltyPoints");
const lp = await LoyaltyPoints.deploy();
await lp.deployed();
console.log("Contract deployed to:", lp.address);
```

## ✅ License
This project is licensed under the MIT License.

## 🤝 Contributing
Feel free to fork this repo, make changes, and submit pull requests!

---
