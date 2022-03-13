// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ArrayReplaceFromEnd {
	uint[] public arr;

	// Deleting an element create a gap in the array.
	// One trick to keep the array compact is to 
	// move the last element into the place to delete.
	function remove(uint index) public {
		// Move the last element into the place to delete
		arr[index] = arr[arr.length - 1];
		// Remove the last element
		arr.pop();
	}

	function test() public {
		arr = [1, 2, 3, 4];

		remove(1);
		// [1, 4, 3]
		assert(arr.length == 3);
		assert(arr[0] == 1);
		assert(arr[1] == 4);
		assert(arr[2] == 3);

		remove(2);
		// [1, 4]
		assert(arr.length == 2);
		assert(arr[0] == 1);
		assert(arr[1] == 4);
	}
}