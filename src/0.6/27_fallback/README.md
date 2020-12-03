# Fallback  
`fallback` is a function that does not take any arguments and does not return anything.  

It is executed either when  
* a function that does not exist is called or  
* Ether is sent directly to a contract but `receive()` does not exist or `msg.data` is not empty  

`fallback` has a 2300 gas limit when called by `transfer` or `send`.  

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.6.10;

contract Fallback {
	event Log(uint gas);

	// Fallback function must be declared as external.
	fallback() external payable {
		// send / transfer (forward 2300 gas to this fallback function)
		// call (forwards all of the gas)
		emit Log(gasleft());
	}

	// Helper function to check the balance of this contract
	function getBalance() public view returns (uint) {
		return address(this).balance;
	}
}

contract SendToFallback {
	function transferToFallback(address payable _to) public payable {
		_to.transfer(msg.value);
	}

	function callFallback(address payable _to) public payable {
		(bool sent,) = _to.call{value: msg.value}("");
		require(sent, "Failed to send Ether");
	}
}
```