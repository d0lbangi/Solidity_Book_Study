// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex6_1 {
    
    event Myfunction(uint result, string name);

    function add(uint _a, uint _b) public {
        uint total = _a + _b;
        emit Myfunction(total, "add");
    }

    function mul(uint _a, uint _b) public {
        uint total = _a * _b;
        emit Myfunction(total, "mul");
    }
}