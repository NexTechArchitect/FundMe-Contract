// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";
import {MockV3Aggregator} from "@chainlink/contracts/src/v0.8/tests/MockV3Aggregator.sol";

contract DeployFundMe is Script {
    address constant SEPOLIA_FEED = 0x694AA1769357215DE4FAC081bf1f309aDC325306;

    uint8 constant DECIMALS = 8;
    int256 constant INITIAL_PRICE = 2000e8;

    function run() external returns (FundMe) {
        vm.startBroadcast();

        address feed;
        if (block.chainid == 11155111) {
            feed = SEPOLIA_FEED;
        } else {
            feed = address(new MockV3Aggregator(DECIMALS, INITIAL_PRICE));
        }

        FundMe fundMe = new FundMe(feed);

        vm.stopBroadcast();
        return fundMe;
    }
}
