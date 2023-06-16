// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex4_7 {
    
    function fun1() public pure returns(uint) {
        uint result = 0;
        uint a = 3;
        while(a>0) {
            result = result + a;
            --a;
        }
        return result;
    }
}   