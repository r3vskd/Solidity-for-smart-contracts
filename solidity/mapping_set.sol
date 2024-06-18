// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/**
 * @title AddressToUintMapping
 * @dev A contract that demonstrates mapping from an address to an unsigned integer.
 */
contract AddressToUintMapping {
    /// @notice Mapping from an address to an unsigned integer.
    mapping(address => uint256) public myMap;

    /**
     * @notice Sets the value associated with a specific address.
     * @dev This function assigns a value to the given address in the mapping.
     * @param _addr The address for which to set the value.
     * @param _i The value to be associated with the address.
     */
    function set(address _addr, uint256 _i) public {
        myMap[_addr] = _i;
    }
}
