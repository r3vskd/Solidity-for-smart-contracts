// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/**
 * @title MultiReturnExample
 * @dev A contract that demonstrates returning multiple named values from a function with assigned values.
 */
contract MultiReturnExample {

    /**
     * @notice Returns multiple named values of different types with assigned values.
     * @dev This function assigns values to named return variables and returns them.
     * @return x The first returned value, set to 1.
     * @return b The second returned value, set to true.
     * @return y The third returned value, set to 2.
     */
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
}
