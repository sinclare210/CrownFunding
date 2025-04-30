//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "../src/PriceConverter.sol";

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

    function getPrice () public view returns (int256) {
       
        
    }

    function startCampaign  (uint256 _targetAmount, uint256 _deadline, uint256 totalAmountRaised, bool isCompleted) public {
        
    }

}