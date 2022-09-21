// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Fallback {
	event Log(uint gas);

	// Fallback function must be declared as external.
	fallback() external payable {
		// send / transfer (forwards 2300 gas to this fallback funciton)
		// call (forwards all of the gas)
		emit Log(gasLeft());
	}

	// Helfer function ot check the balance of this contract
	function getBalance() public view returns (uint) {
		return address(this).balance;
	}
}

contract SendToFallback {
	function transferToFallback(address payable _to) public payable {
		_to.transfer(msg.value);
	}

	function callFallback(address payable _to) public payable {
		(bool sent, ) = _to.call{value: msg.value}("");
		require(sent, "Failed to send Ether");
	}
}