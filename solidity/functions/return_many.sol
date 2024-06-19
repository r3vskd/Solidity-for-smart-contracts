// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/**
 * @title MultiReturnExample
 * @dev A contract that demonstrates returning multiple values from a function.
 */
contract MultiReturnExample {

    /**
     * @notice Returns multiple values of different types.
     * @dev This function returns a tuple containing a uint, a bool, and another uint.
     * @return The tuple (1, true, 2) as a uint, bool, and uint.
     */
    function returnMany()
        public
        pure
        returns (
            uint256,
            bool,
            uint256
        )
    {
        return (1, true, 2);
    }
}
