// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex3_3 {
    
    uint public a = 3;
    function myFun(uint b) public {
        a = b;
    }
}