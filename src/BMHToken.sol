// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BMHToken is ERC20 {
    constructor() ERC20("BMHToken", "BMH") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}