// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract Mytoken is ERC20 {
	constructor(string memory name, string memory symbol) ERC20(name, symbol) {
		// Mint 100 tokens to msg.sender
		// Similar to how
		// 1 dollar = 100 cents
		// 1 token = t * (10 ** decimals)
		_mint(msg.sender, 100 * 10**uint(decimals()));
	}
}