# ABI Encode
```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface IERC20 {
	function transfer(address, uint) external;
}

contract AbiEncode {
	function encodeWithSignature(address to, uint amount) 
		external
		pure
		returns (bytes memory)
	{
		// Type is not checked - "transfer(address, uint"
		return abi.encodeWithSignature("transfer(address,uint256", to, amount);
	}

	function encodeWithSelector(address to, uint amount)
		external
		pure
		returns (bytes memory)
	{
		// Type is not checked - (IERC20.transfer.selector, tru, amount)
		return abi.encodeWithSelector(IERC20.transfer.selector, to, amount);
	}

	function encodeCall(address to, uint amount) external pure returns (bytes memory) {
		// Type and type errors will not compile
		return abi.encodeCall(IERC20.transfer, (to, amount));
	}
}
```