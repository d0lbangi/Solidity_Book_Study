// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex4_3 {
    
    function fun1(uint a) public pure returns(uint) {
        if(a>=10) {
            a = 9;
        } else if (a >= 5 && a <= 7) {
            a =7;
        } else {
            a = 10;
        }
        return a;
    }
}   