// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/simple-storage/SimpleStorage.sol";

// to run the deployment script
// `source .env`
// `forge script script/DeploySimpleStorage.s.sol --rpc-url $RPC_URL --broadcast --private-key $TEST_PKEY`
contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        vm.startBroadcast();
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
}
