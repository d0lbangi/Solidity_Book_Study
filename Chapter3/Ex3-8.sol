// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex3_8 {
    
    uint public a = 3;
    uint public b = myFun();

    function myFun() public returns(uint) {
        a = 100;
        return a;
    }
}