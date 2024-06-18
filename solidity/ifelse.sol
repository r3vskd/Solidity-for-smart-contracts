// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/**
 * @title ConditionalExample
 * @dev Demonstrates a function with multiple return conditions.
 */
contract ConditionalExample {
    /**
     * @notice Returns a value based on the input condition.
     * @dev This function categorizes the input `x` into three groups.
     * @param x The input value to be categorized.
     * @return The category index: 0 if x < 10, 1 if 10 <= x < 20, 2 if x >= 20.
     */
    function foo(uint256 x) public pure returns (uint256) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }
}
