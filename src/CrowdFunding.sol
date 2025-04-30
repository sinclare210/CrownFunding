//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract CrowdFunding {
    address public owner;
    // State variables
    struct Campaign {
        address owner;
        uint256 targetAmount;
        uint256 deadline;
        uint256 totalAmountRaised;
        bool isCompleted;
    }
    mapping (uint256 => Campaign) public Campaigns;

    constructor () {
        owner = msg.sender;
    }

}