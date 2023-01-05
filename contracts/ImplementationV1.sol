// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "./Proxiable.sol";

contract ImplementationV1 is Proxiable {

    address public owner;
    uint public count;
    bool public initialized = false;

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function initialize() external {
        require(owner == address(0));
        require(!initialized);
        owner = msg.sender;
        initialized = true;
    }

    function increment() external {
        count ++;
    }

    function updateCode(address newAddress) external onlyOwner {
        updateCodeAddress(newAddress);
    }

}