# Multi Call
An example of contract that aggregates multiple queries using a for loop and `staticcall`.
```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MultiCall {
	function multiCall(address[] calldata targets, bytes[] calldata data)
		external
		view
		returns (bytes[] memory)
	{
		require(targets.length == data.length, "target length != data length");

		bytes[] memory results = new bytes[](data.length);

		for (uint i; i < targetes.length; i++) {
			(bool success, bytes memory result) = targets[i].staticcall(data[i]);
			require(success, "call failed");
			results[i] = result;
		}

		return results;
	}
}
```
Contract to test `MultiCall`.
```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract TestMultiCall {
	function test(uint _i) external pure returns (uint) {
		return _i;
	}

	function getData(uint _i) external pure returns (bytes memory) {
		return abi.encodeWithSelector(this.test.selector, _i);
	}
}
```