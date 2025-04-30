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
    address creator;              // Who started the campaign
    string title;                 // Title of the campaign
    string description;           // Brief explanation of the goal
    uint256 targetAmount;         // How much the creator wants to raise
    uint256 deadline;             // Unix timestamp for the deadline
    uint256 totalAmountRaised;    // How much has been raised so far
    address[] contributors;       // List of funders (optional, gas heavy)
    mapping(address => uint256) contributions; // Who gave what (for refunds)
    bool isCompleted;             // Whether campaign ended successfully
    bool isWithdrawn;             // If funds have been withdrawn by creator
}
    mapping (uint256 => Campaign) public Campaigns;

    constructor (address priceFeed) {
        s_PriceFeed = AggregatorV3Interface(priceFeed);
        owner = msg.sender;
    }

    function deposiToCampaign () public payable  {
        require(msg.value.getConversionRate(s_PriceFeed) >= 10, "Not enough");

        
    }

    function startCampaign  (uint256 _targetAmount, uint256 _deadline, uint256 totalAmountRaised, bool isCompleted) public {
        
    }

}