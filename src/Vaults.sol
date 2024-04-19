// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/mocks/docs/ERC4626Fees.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Vaults is ERC4626Fees {
    address payable public owner;
    uint256 public entryFeeBasisPoints;

    constructor(IERC20 _asset, uint256 _BasisPoints) ERC4626(_asset) ERC20("Broken Man Hole", "vBMH") {
        owner = payable(msg.sender);
        entryFeeBasisPoints = _BasisPoints;
    }

    function _entryFeeBasisPoints() internal view override returns (uint256) {
        return entryFeeBasisPoints;
    }

    function _entryFeeRecipient() internal view override returns (address) {
        return owner;
    }
    
}