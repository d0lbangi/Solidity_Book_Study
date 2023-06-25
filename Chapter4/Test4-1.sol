// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Test4_1 {

    function fun1(uint a) public pure returns(bool) {

        if (a > 10) {
            return true;
        } else {
            return false;
        }
    }
}