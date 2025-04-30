//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "../src/PriceConverter.sol";
import {PriceConverter} from "../src/PriceConverter.sol";

contract CrowdFunding {

    AggregatorV3Interface public s_PriceFeed;
    using PriceConverter for uint256;
    
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

    constructor (address priceFeed) {
        s_PriceFeed = AggregatorV3Interface(priceFeed);
        owner = msg.sender;
    }

    function deposit () public payable  {
        require(msg.value.getConversionRate(s_PriceFeed) >= 10, "Not enough");
        
        
    }

    function startCampaign  (uint256 _targetAmount, uint256 _deadline, uint256 totalAmountRaised, bool isCompleted) public {
        
    }

}