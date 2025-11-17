// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract CA200Tokens is ERC20, ERC20Permit {

    constructor() ERC20("CA_BlockChain_200Tokens", "CA200TK") ERC20Permit("CA_BlockChain_200Tokens") {
        uint256 initialSupply = 200;
         _mint(msg.sender, initialSupply);
    }
}
