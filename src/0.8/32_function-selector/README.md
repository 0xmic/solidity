# Function Selector
When a function is called, the first 4 bytes of `calldata` specifies which function to call.  
This 4 bytes is called a function selector.  
Take for example, this code below. It uses `call` to execute `transfer` on a contract at the addres `addr`.  
```
addr.call(abi.encodeWithSignature("transfer(address,uint256"), 0xSomeAddress, 123))
```
The first 4 bytes returned from `abi.encodeWithSignature(....)` is the function selector.  
Perhaps you can save a tiny amount of gas if you precompute and inline the function selector in your code?  
Here is how the function selector is computed.  
```
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
```