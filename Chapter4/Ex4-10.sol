// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex4_10 {
    
    function fun1() public pure returns(uint) {
        uint result = 0;
        for(uint a = 0 ; a < 10; ++a) {
            if(a==1) {
                return result;
            }
            result += a;
        }
        return result;
    }
}