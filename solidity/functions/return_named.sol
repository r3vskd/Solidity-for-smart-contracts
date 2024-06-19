// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/**
 * @title MultiReturnExample
 * @dev A contract that demonstrates returning multiple named values from a function.
 */
contract MultiReturnExample {

    /**
     * @notice Returns multiple named values of different types.
     * @dev This function returns a tuple containing a uint named x, a bool named b, and another uint named y.
     * @return x The first returned value, set to 1.
     * @return b The second returned value, set to true.
     * @return y The third returned value, set to 2.
     */
    function named()
        public
        pure
        returns (
            uint x,
            bool b,
            uint y
        )
    {
        return (1, true, 2);
    }
}
