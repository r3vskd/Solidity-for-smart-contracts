![Solidity](https://img.shields.io/badge/Solidity-%23363636.svg?style=for-the-badge&logo=solidity&logoColor=white)

[![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome) <img src="https://img.shields.io/badge/Licence-MIT-yellowgreen">

<img src = 'https://github.com/r3vskd/Solidity-for-smart-contracts/blob/main/resources/Solidity-Developer-a-beginners-guide.png'></img>

## Solidity Programming Lessons

## Solidity is the language in which you write decentralized apps (aka dapps).
On this walkthrough we learn how to deploy a smart contract step by step in a granular way, from basis (variables, conditionals, mappings, arrays, functions, etc).

#### Steps to Run solidity scripts using [Remix](https://remix.ethereum.org/) :
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

## if else statement
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
<br>
<img src = 'https://github.com/r3vskd/Solidity-for-smart-contracts/blob/main/resources/hash_mapings.png'></img>
When the index of the needed data is known, it can get returned extremely quickly. As a result, hash tables are data structures in which insertion and 
search operations are extremely quick, regardless of the quantity of the data.

Maps are created with the syntax mapping(keyType => valueType).
keyType can be value types such as uint, address or bytes.
valueType can be any type including another mapping or an array.
Mappings are not iterable.

Write a mapping to the store address to uint mapping:
```
mapping(address => uint) public myMap;
```
### Accessing Mapping Values using Keys
This contract provides a simple yet effective way to manage numerical data associated with addresses, enabling basic CRUD (Create, Read, Update, Delete) operations on the mapping.

<img src = 'https://github.com/r3vskd/Solidity-for-smart-contracts/blob/main/resources/Screenshot_1.png'></img>

Function that returns the value of a mapping given a key.
```
function get(address _addr) public view returns (uint) {
 return myMap[_addr];
  }
```
### Setting Mapping Values
Function that sets the value of myMap mapping given an address as key and a uint value.
```
 function set(address _addr, uint _i) public {
  myMap[_addr] = _i;
   }
```
### Removing Mapping Values
Function that remove the value of myMap mapping given an address as key.
```
 function remove(address _addr) public {
  delete myMap[_addr]; 
  }
```

## Array

Array in solidity can be used to store multiple values of the same type. Array can have a compile-time fixed size
or a dynamic size. We will write code to do different operations on array like adding, removing, getting value at 
index, getting whole array, etc.

Initialize an array:
Array named arr and not initializing it with values.
```
   uint[] public arr;
```

Array and initilize it with values.
```    uint[] public arr2 = [1, 2, 3];```

Array with fixed size. In this case, it will be initilized with zeros by default.
```     uint[10] public myFixedSizeArr; ```

### Getting an element from an array
Get an element from an array. Here we are just indexing the array using the index passed through the parameter.
```
function get(uint i) public view returns (uint) {
 return arr[i]; 
 }
```
### Append an element to an array
Function to append an element to an array. This will increase the array length by 1
```
function push(uint i) public {
arr.push(i);
}
```
The push function to append an element to an array. It appends the element at the end of the array.

### Pop an element from an array
Function to remove an element from an array. This will decrease the array length by 1.
```
function pop() public {
arr.pop(); 
}
```
The pop function to remove an element from an array. It removes the last element from the array.

### Remove an element from an array
Function to remove an element from an array without changing the array length.
```
function remove(uint index) public {
delete arr[index]; 
}
```
It does not change the array length. It resets the value at index to it's default value, in this case 0.

### Get the length of an array
Function to get the length of an array.
```
function getLength() public view returns (uint) {`
return arr.length;
}
```
arr.length gives the length of the array.

### Retrieving the entire array
Solidity provides a way to retrieve the entire array. But it is not recommended to use it for arrays that can grow indefinitely in length.
```
    function getArr() public view returns (uint[] memory) {
        return arr;
    }
```

### Removing an element without a gap in the array
Deleting an element from an array creates a gap in the array. One trick to keep the array compact is to move the last element into the place to delete.
```
function removeCompact(uint index) public { // Move the last element into the place to delete arr[index] = arr[arr.length - 1]; // Remove the last element arr.pop(); }
```
### What's the difference between remove and pop an element from an array?
### POP
The pop function in Solidity is a built-in function that removes the last element from a dynamic array. This operation reduces the length of the array by one.
#### Example:
```arr.pop();```
If arr is [1, 2, 3, 4], calling arr.pop() will modify it to [1, 2, 3].

#### Characteristics:
- Simple and efficient, as it only removes the last element.
- No need to specify an index.
- Cannot remove elements from specific positions other than the end of the array.

### REMOVE
The remove function is typically a custom function that removes an element from a specific index in a dynamic array.
#### Example:
```
function remove(uint256 index) public {
    require(index < arr.length, "Index out of bounds");
    arr[index] = arr[arr.length - 1];
    arr.pop();
}
```
If arr is [1, 2, 3, 4] and you call remove(1), it will modify the array to [1, 4, 3].
#### Characteristics:
- Removes an element from a specific index.
- Efficient because it only involves a simple reassignment and a pop.
- Does not preserve the order of elements.
- This maintains array integrity without preserving the order of elements.

### REMOVECOMPACT
The removeCompact function is another custom implementation that removes an element from a specific
index and shifts all subsequent elements to the left to fill the gap, preserving the order of the array.
#### Example:
```
function removeCompact(uint256 index) public {
 require(index < arr.length, "Index out of bounds");
  for (uint256 i = index; i < arr.length - 1; i++) {
   arr[i] = arr[i + 1]; } arr.pop(); 
   }
```
If arr is [1, 2, 3, 4] and you call removeCompact(1), it will modify the array to [1, 3, 4].
#### Characteristics:
- Removes an element from a specific index.
- Preserves the order of elements.
- Less efficient than the remove function because it involves shifting elements.

### SUMMARY
 - pop: Removes the last element of the array. Simple and efficient, but limited to the end of the array.
 - remove: Custom function to remove an element from a specific index by replacing it with the last element and calling pop. Efficient but does not preserve order.
 - removeCompact: Custom function to remove an element from a specific index and shift subsequent elements to preserve order. Less efficient due to the need to shift elements.

## FUNCTION

### Returning many values from a function
Unlike other languages, solidity supports returning multiple return values from a function.
Function that returns three values:
```
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
```

### Returning named values from a function
We can even name return values.
```
function named()
public 
pure 
returns (
uint x,
bool b,
uint y 
) 
{ return (1, true, 2);
}
```

### Getting return values without return statement
 - Return values can be assigned to their name.
 - In this case the return statement can be omitted.
```
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
```

### Destructuring return values
Use destructing assignment when calling another function that returns multiple values.
Code this function:
```
function destructingAssigments()
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
```

### Limitations of functions
 - We cannot use map for neither input nor output
 - But we can use array for input like this:
 ```   function arrayInput(uint[] memory _arr) public {} ```
 - We can use array for output as well like this:
```
uint[] public arr; 
function arrayOutput() public view returns (uint[] memory) {
return arr; 
}
```

### References:
https://www.alchemy.com/overviews <br>
https://solidity-by-example.org/ <br>
https://hardhat.org/hardhat-vscode/docs/overview <br>
https://docs.web3j.io/4.11.0/smart_contracts/compiling_solidity/ 

 

 
