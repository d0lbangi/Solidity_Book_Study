// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex4_9 {
    
    function fun1() public pure returns(uint) {
        uint result = 0;
        uint a = 5;

        do {
            result += a;
            ++a;
        } while (a>10);
        return result;
    }
}