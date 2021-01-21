# For and While Loop  
Solidity supports `for`, `while`, and `do while` loops.  

Don't write loops that are unbounded as this can hit the gas limit, causing your transaction to fail.  

For the reason above, `while` and `do while` loops are rarely used.  

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

contract Loop {
	function loop() public {
		// for loop
		for (uint i = 0; i < 10; i++) {
			if (i == 3) {
				// Skip to the next iteration with continue
				continue;
			}
			if (i == 5) {
				// Exit loop with break
				break;
			}
		}

		// while loop
		uint j;
		while (j < 10) {
			j++;
		}
	}
}
```