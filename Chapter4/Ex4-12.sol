// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex4_12 {
    
    function fun1() public pure returns(uint) {
        uint result = 0;
        for(uint a = 0; a<2; a++) {
            if(a==1) {
                continue;
            }
            result += a;
        }
        return result;
    }
}