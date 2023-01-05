// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "./ImplementationV1.sol";

contract ImplementationV2 is ImplementationV1 {

    function decrement() external {
        count--;
    }

}