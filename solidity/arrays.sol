// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/**
*Example of a Solidity contract that includes all the requested functions to manipulate and interact with a dynamic array: 
*get(uint i), push(uint i), pop(), remove(uint index), getlength(), getArr(), and removeCompact(uint index).
*/

contract ArrayExample {
    /// @notice A dynamic array of unsigned integers.
    uint256[] public arr;

    /**
     * @notice Appends a value to the end of the dynamic array `arr`.
     * @dev This function adds a new value to the `arr` array.
     * @param i The value to be added to the array.
     */
    function push(uint256 i) public {
        arr.push(i);
    }

    /**
     * @notice Removes the last element from the dynamic array `arr`.
     * @dev This function reduces the length of the `arr` array by 1.
     */
    function pop() public {
        require(arr.length > 0, "Array is already empty");
        arr.pop();
    }

    /**
     * @notice Removes the element at the specified index in the dynamic array `arr`.
     * @dev This function removes the element at the given index and replaces it with the last element.
     * @param index The index of the element to remove.
     */
    function remove(uint256 index) public {
        require(index < arr.length, "Index out of bounds");
        arr[index] = arr[arr.length - 1];
        arr.pop();
    }

    /**
     * @notice Removes the element at the specified index in the dynamic array `arr` and maintains order.
     * @dev This function removes the element at the given index and shifts all subsequent elements left.
     * @param index The index of the element to remove.
     */
    function removeCompact(uint256 index) public {
        require(index < arr.length, "Index out of bounds");
        for (uint256 i = index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }
        arr.pop();
    }

    /**
     * @notice Retrieves the value at a specific index in the dynamic array `arr`.
     * @dev This function returns the value at the given index of the `arr` array.
     * @param index The index of the value to retrieve.
     * @return The value at the specified index in the `arr` array.
     */
    function get(uint256 index) public view returns (uint256) {
        require(index < arr.length, "Index out of bounds");
        return arr[index];
    }

    /**
     * @notice Returns the length of the dynamic array `arr`.
     * @dev This function returns the number of elements in the `arr` array.
     * @return The length of the `arr` array.
     */
    function getLength() public view returns (uint256) {
        return arr.length;
    }

    /**
     * @notice Returns the entire dynamic array `arr`.
     * @dev This function returns the complete `arr` array.
     * @return The dynamic array `arr`.
     */
    function getArr() public view returns (uint256[] memory) {
        return arr;
    }
}
