// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/**
 * @title DestructuringExample
 * @dev A contract that demonstrates destructuring assignments in Solidity.
 */
contract DestructuringExample {
    
    /**
     * @notice Returns multiple values of different types.
     * @dev This function returns a tuple containing a uint, a bool, and another uint.
     * @return The tuple (1, true, 2) as a uint, bool, and uint.
     */
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

    /**
     * @notice Demonstrates destructuring assignments.
     * @dev This function shows how to unpack multiple return values into separate variables.
     * @return A tuple containing five values: three from returnMany() and two from a destructuring assignment.
     */
    function destructingAssignments()
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
        // Destructuring assignment to unpack return values from returnMany()
        (uint i, bool b, uint j) = returnMany();

        // Destructuring assignment with some values left out
        (uint x, , uint y) = (4, 5, 6);

        // Return the unpacked values
        return (i, b, j, x, y);
    }
}
