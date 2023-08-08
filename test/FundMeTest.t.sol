// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {FundMe} from "../src/fund-me/FundMe.sol";
import {Test, console} from "forge-std/Test.sol";

contract FundMeTest is Test {
    FundMe fundMe;

    function setUp() public {
        fundMe = new FundMe();
    }

    function testMinimumDollarIsFive() public {
        uint256 actual = fundMe.MINIMUM_USD();
        uint256 expected = 5e18;
        assertEq(actual, expected, "Minimum USD should be 5");
    }

    function testOwnerIsMessageSender() public {
        address actual = fundMe.i_owner();
        address expected = address(this);
        assertEq(actual, expected, "Owner should be message sender");
    }

    // This is a forked test that specifically points to the testnet
    // forge test -vvv --mt testPriceFeedVersionIsAccurate --fork-url $RPC_URL
    function testPriceFeedVersionIsAccurate() public {
        uint256 actual = fundMe.getVersion();
        uint256 expected = 4;
        assertEq(actual, expected, "Price feed version should be 4");
    }

}