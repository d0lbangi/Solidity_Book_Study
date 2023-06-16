// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex3_14 {
    
    uint public a = 3;
    function myFun() public returns(uint) {
        a = 4;
        return a;
    }
}