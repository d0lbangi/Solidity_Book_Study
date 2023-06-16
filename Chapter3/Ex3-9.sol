// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex3_9 {
    
    uint public a = 3;
    function myFun(uint b) public returns(uint) {
        a = b;
        return a;
    }
}