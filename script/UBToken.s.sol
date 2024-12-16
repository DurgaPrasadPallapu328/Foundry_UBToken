// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "forge-std/Script.sol";
import "../src/UBToken.sol";

contract UBTokenDeploy is Script {
    address constant RECIPIENT = 0x9965507D1a55bcC2695C58ba16FB37d819B0A4dc;

    function run() public {
        vm.startBroadcast();
        
        // Deploy the token with the specified name, symbol, and initial supply
        UBToken ubToken = new UBToken(
            "University of Bridgeport Token",
            "UBT",
            1_000_000 * 10 ** 18
        );

        // Transfer 100 tokens (100 * 10^18) directly to the 0x9965507D1a55bcC2695C58ba16FB37d819B0A4dc
        ubToken.transfer(RECIPIENT, 100 * 10 ** 18);

        vm.stopBroadcast();
    }
}
