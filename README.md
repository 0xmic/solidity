# Notes on Solidity  
Solidity is an object-oriented, high-level language for implementing smart contracts. Smart contracts are programs which govern the behaviour of accounts within the Ethereum state.  

Solidity was influenced by C++, Python and JavaScript and is designed to target the Ethereum Virtual Machine (EVM).  

Solidity is statically typed, supports inheritance, libraries and complex user-defined types among other features.  

With Solidity you can create contracts for uses such as voting, crowdfunding, blind auctions, and multi-signature wallets.  

When deploying contracts, you should use the latest released version of Solidity. This is because breaking changes as well as new features and bug fixes are introduced regularly.  

**Documentation**:  
* Github: https://github.com/ethereum/solidity
* Read the Docs: https://docs.soliditylang.org/en/latest/


## Solidity by Example  
An introduction to Solidity with simple examples.  

### Examples
v0.8.10 - [source code & license](https://github.com/solidity-by-example/solidity-by-example.github.io)  
* [Hello World](./src/0.8/00_hello-world)
* [First App](./src/0.8/01_first-app)
* [Primitive Data Types](./src/0.8/02_primitives)
* [Variables](./src/0.8/03_variables)
* [Constants](./src/0.8/04_constants)
* [Immutable](./src/0.8/05_immutable)
* [Reading and Writing to a State Variable](./src/0.8/06_state-variables)
* [Ether and Wei](./src/0.8/07_ether-units)
* [Gas and Gas Price](./src/0.8/08_gas)
* [If / Else](./src/0.8/09_if-else)
* [For and While Loop](./src/0.8/10_loop)
* [Mapping](./src/0.8/11_mapping)
* [Array](./src/0.8/12_array)
* [Enum](./src/0.8/13_enum)
* [Structs](./src/0.8/14_structs)
* [Data Locations - Storage, Memory and Calldata](./src/0.8/15_data-locations)
* [Function](./src/0.8/16_function)
* [View and Pure Functions](./src/0.8/17_view-and-pure-functions)
* [Error](./src/0.8/18_error)
* [Function Modifier](./src/0.8/19_function-modifier)
* [Events](./src/0.8/20_events)
* [Constructor](./src/0.8/21_constructor)
* [Inheritance](./src/0.8/22_inheritance)
* [Shadowing Inherited State Variables](./src/0.8/23_shadowing-inherited-state-variables)
* [Calling Parent Contracts](./src/0.8/24_calling-parent-contracts)
* [Visibility](./src/0.8/25_visibility)
* [Interface](./src/0.8/26_interface)
* [Payable](./src/0.8/27_payable)
* [Sending Ether - Transfer, Send, Call](./src/0.8/28_sending-ether)
* [Fallback](./src/0.8/29_fallback)
* [Call](./src/0.8/30_call)
* [Delegatecall](./src/0.8/31_delegatecall)
* [Function Selector](./src/0.8/32_function-selector)
* [Calling Other Contract](./src/0.8/33_calling-other-contract)
* [Creating Contracts from a Contract](./src/0.8/34_new-contract)
* [Try / Catch](./src/0.8/35_try-catch)
* [Import](./src/0.8/36_import)
* [Library](./src/0.8/37_library)
* [ABI Encode](./src/0.8/38_abi-encode)
* [ABI Decode](./src/0.8/39_abi-decode)
* [Hashing with Keccak256](./src/0.8/40_hashing)
* [Verifying Signature](./src/0.8/41_signature)
* [Gas Optimizations](./src/0.8/42_gas)
* [Bitwise Operators](./src/0.8/43_bitwise-operators)

### Applications
* [Ether Wallet](./src/0.8/app/00_ether-wallet)
* [Multi Sig Wallet](./src/0.8/app/01_multi-sig-wallet)
* [Merkle Tree](./src/0.8/app/02_merkle-tree)
* [Iterable Mapping](./src/0.8/app/03_iterable-mapping)
* [Precompute Contract Address with Create2](./src/0.8/app/04_create2)
* [ERC20](./src/0.8/app/05_erc20)
* [ERC721](./src/0.8/app/06_erc721)
* [Minimal Proxy Contract](./src/0.8/app/07_minimal-proxy)
* [Upgradeable Proxy](./src/0.8/app/08_upgradeable-proxy)
* [Deploy Any Contract](./src/0.8/app/09_deploy-any-contract)
* [Write to Any Slot](./src/0.8/app/10_write-to-any-slot)
* [Uni-Directional Payment Channel](./src/0.8/app/11_uni-directional-payment-channel)
* [Bi-Directional Payment Channel](./src/0.8/app/12_bi-directional-payment-channel)
* [English Auction](./src/0.8/app/13_english-auction)
* [Dutch Auction](./src/0.8/app/14_dutch-auction)