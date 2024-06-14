![Solidity](https://img.shields.io/badge/Solidity-%23363636.svg?style=for-the-badge&logo=solidity&logoColor=white)

[![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome) <img src="https://img.shields.io/badge/Licence-MIT-yellowgreen">

<img src = 'https://github.com/r3vskd/Solidity-for-smart-contracts/blob/main/resources/Solidity-Developer-a-beginners-guide.png'></img>

# Build a Smart Contract on Ethereum 

## Solidity is the language in which you write decentralized apps (aka dapps).
On this walkthrough we learn how to deploy a smart contract step by step in a granular way, from basis (variables, conditionals, mappings, arrays, functions, etc).

### Steps to Run solidity scripts using [Remix](https://remix.ethereum.org/) :

1- Open remix online debugger on your browser o download the dektop version (.exe)
2- Go to workspaces and create a file named "HelloWorld.sol"
3- Write:

``    // SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract HelloWorld{
    string public greet = "HelloWorld";
}``
