// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract FunctionSelector {
	/*
	"transfer(address,uint256)"
	0xa9059cbb
	"transferFrom(address,address,uint256)"
	0x23b872dd
	*/
	function getSelector(string calldata _func) external pure returns (bytes4) {
		returns bytes4(keccak(bytes(_func)));
	}
}