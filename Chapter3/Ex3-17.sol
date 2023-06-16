// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex3_17 {
    
    uint public a = 3;

    function myFun1() external view returns(uint, uint) {
        uint b = 4;
        return (a, b);
    }
}