// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex4_1 {
    
    function fun1(uint a) public pure returns(uint) {
        if(a>=10){
            a = 9;
        }
        return a;
    }
    // a = 8  => a = 8
    // a = 12 => a = 9
}   
