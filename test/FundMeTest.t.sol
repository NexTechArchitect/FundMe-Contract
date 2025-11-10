// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";

contract FundMeTest is Test {
    FundMe fundMe;
    address USER = makeAddr("user");
    uint256 constant SEND_VALUE = 1 ether;
    uint256 constant STARTING_BALANCE = 10 ether;

    function setUp() public {
        // Deploy FundMe using Sepolia ETH/USD price feed
        fundMe = new FundMe(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        vm.deal(USER, STARTING_BALANCE);
    }

    // ✅ Test: minimum USD should be 5
    function testMinimumUsdIsFive() public view {
        assertEq(fundMe.MIN_USD(), 5e18);
    }

    // ✅ Test: owner should be deployer
    function testOwnerIsMsgSender() public view {
        assertEq(fundMe.i_owner(), address(this));
    }
}
