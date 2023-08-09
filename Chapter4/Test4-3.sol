// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Test4_3 {

    function fun1() public pure returns(uint) {
        uint result = 0;
        uint a = 12;

        while(true) {
            if(a==7) {
                break;
            }
            result = result + a;
            --a;
        }
        return result;
    }
}
