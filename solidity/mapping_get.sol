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
     * @notice Retrieves the value associated with a specific address.
     * @dev This function returns the value mapped to the provided address.
     * @param _addr The address for which to retrieve the value.
     * @return The value associated with the given address.
     */
    function get(address _addr) external view returns (uint256) {
        return myMap[_addr];
    }
}