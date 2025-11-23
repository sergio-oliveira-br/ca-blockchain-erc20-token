// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract MyToken is ERC20, ERC20Permit {

    constructor() ERC20("My200Tokens", "CA200TKS") ERC20Permit("My200Tokens") {

        uint256 initialSupply = 200;
        _mint(msg.sender, initialSupply);
    }

    // remove the decimals values
    function decimals() public pure override returns (uint8) {
    return 0;
    }
}