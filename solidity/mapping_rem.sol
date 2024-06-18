// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/**
 * @title AddressToUintMapping
 * @dev A contract that demonstrates mapping from an address to an unsigned integer, with functionality to set and remove values.
 */
contract AddressToUintMapping {
    /// @notice Mapping from an address to an unsigned integer.
    mapping(address => uint256) public myMap;

    /**
     * @notice Removes the value associated with a specific address.
     * @dev This function deletes the mapping entry for the given address.
     * @param _addr The address for which to remove the value.
     */
    function remove(address _addr) public {
        delete myMap[_addr];
    }
}
