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
```
   // SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract HelloWorld{
    string public greet = "HelloWorld";
}
```
 4- Go to "" solidity compiler and click on "compiler" and select the version 0.8.7
 5- Click on "Compile HelloWorld.sol"
 6- Click on "Deploy"
 7- Verify that the debugger below has thi icon: ![[Pasted image 20240612170709.png]]
 8- Once you has verify that, click on my contract and clcik on "Hello".

## Reading and writing a State Variable 

 Create a variable named num.
 `uint public num;`
 Each function call is a new transaction. Every transaction has a transaction fees. 
 To write or update a state variable you need to send a transaction & pay the fees.
 On the other hand, you can read state variables, for free, without any transaction fee.

### Reading a state variable

 Let's write a function to read the state variable num.
 
 ` function get() public view returns (uint){`
 `return num;`
 `}`

### Writing a state variable

Let's write a function to update a state variable `num`.
 
 `function set(uint _num) public {`
 `num = _num;`
 `}`

## if-else conditionals

 Solidity support conditional statements `if`, `else if` and `else`.  
 It also supports a ternary operator.

### if else statement
 Let's write a simple if else conditon to return 0 if the value is less than 10 or or 1 if
 the value is greater than 10 and less than 20 or 2 if the value is greater than 20.
 
 ````
 //SPDX-License-Identifier: MIT
 pragma solidity ^0.8.18;
 contract ConditionalExample {
 function foo(uint x) public pure returns (uint) {
  if (x < 10) {
  return 0;
  } else if (x < 20) {
  return 1;
  } else {
  return 2;
   }
  }  
  ````
 - The fisrt line indicates the license under which the code is published. The MIT license is a permissive open-source license.
 
  - The line "pragma solidity ispecifies the version of the solidity compiler to be used. The "^0.8.18" means any version of solidity 0.8.18 or higher, but less than 0.9.0"
  
  - The third line starts the declaration of a new smart contract named "ConditionalExample".
  
  - The fourth line specifies a public function, meaning  it can be called form outside the contract 
     - the function takes a single parameter 'x'  of type 'uint256', an unsigner integer.
     - the 'purge keyword' indicates that the function does not read from or modify the state of the blockchain. It only uses the parameters passed to it and performs computations.
  - The function returns a value of type 'uint256'.

### Ternary Operator
  Ternary operator which is a shorthand for an if-else statement.
  Let's write a simple ternary operator to return 1 if the value is less than 10 or 2 if the value is greater than 10.
 
  ````
  function ternary(uint _x) public pure returns (uint) {
  // if (_x < 10) {
  // return 1;
  // } 
   // return 2; 
  // shorthand way to write if / else statement
  return _x < 10 ? 1 : 2; 
  }
  ````
## Mapping

Mappings in Solidity are hash tables that store data as key-values pairs, where the key can be any of the built-in data types supported by Ethereum.

A hash table is a data structure that stores data associatively. Data is kept in an array format in a hash table, with each data value having 
its own unique index value. Hash Tables use an array as a storage medium and employ the hash technique to establish an index from which an element is to be inserted or located.
<img src = 'https://github.com/r3vskd/Solidity-for-smart-contracts/blob/main/resources/hash_mapings.png'></img>


### References:
https://www.alchemy.com/overviews <br>
https://solidity-by-example.org/ <br>
https://hardhat.org/hardhat-vscode/docs/overview <br>
https://docs.web3j.io/4.11.0/smart_contracts/compiling_solidity/ 



 

 
