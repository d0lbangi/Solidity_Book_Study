// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Test3_3 {

    uint public num = 10;

    function doubleNum() public returns(uint) {

        num = num * 2;
        return num;
    }
}