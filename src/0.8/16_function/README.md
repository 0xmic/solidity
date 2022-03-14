# Function  
There are several ways to return outputs from a function.  
Public functions cannot accept certain data types as inputs or outputs.  
```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Function {
	// Functions can return multiple values.
	function returnMany()
		public
		pure
		returns (
			uint,
			bool,
			uint
		)
	{
		return (1, true, 2);
	}

	// Return values can be named.
	function named()
		public
		pure
		returns (
			uint x,
			bool b,
			uint y
		)
	{
		return (1, true, 2);
	}

	// Return values can be assigned to their name.
	// In this case the return statement can be omitted.
	function assigned()
		public
		pure
		returns (
			uint x,
			bool b,
			uint y
		)
	{
		x = 1;
		b = true;
		y = 2;
	}

	// Use destructuring assignment when calling another
	// function that returns multiple values.
	function destructuringAssignments()
		public
		pure
		returns (
			uint,
			bool,
			uint,
			uint,
			uint
		)
	{
		(uint i, bool b, uint j) = returnMany();

		// Values can be left out.
		(uint x, , uint y) = (4, 5, 6);

		return (i, b, j, x, y);
	}

	// Cannot use map for either input or output

	// Can use array for input
	function arrayInput(uint[] memory _arr) public {}

	// Can use array for output
	uint[] public arr;

	function arrayOutput() public view returns (uint[] memory) {
		return arr;
	}
}
```