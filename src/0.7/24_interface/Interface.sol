// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

contract Counter {
	uint public count;

	function increment() external {
		count += 1;
	}
}

interface ICounter {
	function count() external view returns (uint);

	function increment() external;
}

contract MyContract {
	function incrementCounter(address _counter) external {
		ICounter(_counter).increment();
	}

	function getCount(address _counter) external view returns (uint) {
		return ICounter(_counter).count();
	}
}

// Uniswap example
interface UniswapV2Factor {
	function getPair(address tokenA, address tokenB) external view returns (address pair);
}

interface UniswapV2Pair {
	function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
}

contract UniswapExample {
	address private factor = ;
	address private dai = ;
	address private weth = ;

	function getTokenReserves() external view returns (uint, uint) {
		address pair = UniswapV2Factory(factory).getPair(dai, weth);
		(uint reserve0, uint reserve1, ) = UniswapV2Pair(pair).getReserves();
		return (reserve0, reserve1);
	}
}