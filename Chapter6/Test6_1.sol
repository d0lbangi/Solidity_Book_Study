// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Test6_1 {

    event Info(uint num);
    uint public num;

    constructor (uint _num) {
        num = _num;
    }

    function changeNum (uint _num) public {
        num = _num;
        emit Info(_num);
    }
}