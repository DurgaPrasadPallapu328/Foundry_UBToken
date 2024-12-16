// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract UBToken is ERC20 {
    /**
     * @dev Constructor to mint initial supply to the deployer
     * @param name Token name
     * @param symbol Token symbol
     * @param initialSupply The initial token supply to mint
     */
    constructor(
        string memory name,
        string memory symbol,
        uint256 initialSupply
    ) ERC20(name, symbol) {
        // Mint the initial supply to the deployer's address
        _mint(msg.sender, initialSupply);
    }
}
