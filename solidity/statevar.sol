// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/**
 * @title SimpleStorage
 * @dev A simple storage contract that allows to set and get an unsigned integer.
 */
contract SimpleStorage {
    /// @notice The stored unsigned integer.
    uint256 public num;

    /**
     * @notice Retrieves the stored unsigned integer.
     * @dev This function is a view, meaning it does not modify the state.
     * @return The stored unsigned integer.
     */
    function get() external view returns (uint256) {
        return num;
    }

    /**
     * @notice Sets the stored unsigned integer to a new value.
     * @dev This function modifies the state by updating the stored unsigned integer.
     * @param _num The new value to be stored.
     */
    function set(uint256 _num) external {
        num = _num;
    }
}

