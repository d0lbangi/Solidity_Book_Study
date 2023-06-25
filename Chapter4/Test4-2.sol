// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Test4_2 {

    function fun1() public pure returns(uint) {

        uint result = 0;

        for(uint i = 0; i < 11; i++) {
            result = result + i;
        }
        return result;
    }
}