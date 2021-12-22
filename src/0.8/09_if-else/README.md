# If / Else  
Solidity supports conditional statements `if`, `else if` and `else`.  
```
// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

contract ifElse {
	function foo(uint x) public pure returns (uint) {
		if (x < 10) {
			return 0;
		} else if (x < 20) {
			return 1;
		} else {
			return 2;
		}
	}

	function ternary(uint _x) public pure returns (uint) {
		// if (_x < 10) {
		//      return 1;
		// }
		// return 2;

		// shorthand way to write if / else statement
		return _x < 10 ? 1 : 2;
	}
}
```