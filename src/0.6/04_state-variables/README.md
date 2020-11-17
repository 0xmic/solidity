# Reading and Writing to a State Variable  
You need to send a transaction to the blockchain to write or update a state variable.  
This means that you will have to pay a transaction fee.  
On the other hand, you can read data from a state variable, for free, without sending a transaction.  

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.6.10;

contract SimpleStorage {
	// State variable to store a number
	uint public num;

	// You need to send a transaction to write to a state variable.
	function set(uint _num) public {
		num = _num
	}

	// You can read from a state variable without sending a transaction.
	// Actually, we don't need this function. The compiler automatically
	// creates getter functions for all public variables.
	function get() public view returns (uint) {
		return num;
	}
}
```