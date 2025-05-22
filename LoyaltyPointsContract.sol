// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract LoyaltyPoints {
    address public owner;

    mapping(address => uint256) public pointsBalance;

    event PointsIssued(address indexed user, uint256 amount);
    event PointsRedeemed(address indexed user, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can perform this action");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function issuePoints(address user, uint256 amount) external onlyOwner {
        require(user != address(0), "Invalid user address");
        require(amount > 0, "Amount must be greater than 0");

        pointsBalance[user] += amount;
        emit PointsIssued(user, amount);
    }

    function redeemPoints(uint256 amount) external {
        require(pointsBalance[msg.sender] >= amount, "Insufficient points");

        pointsBalance[msg.sender] -= amount;
        emit PointsRedeemed(msg.sender, amount);
    }

    function checkPoints(address user) external view returns (uint256) {
        return pointsBalance[user];
    }

    function transferOwnership(address newOwner) external onlyOwner {
        require(newOwner != address(0), "New owner is the zero address");
        owner = newOwner;
    }
}
