// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex2_7 {

    uint a = 5;

    function justA() public view returns(uint) {
        return a;
    }

    function preMinus() public returns(uint) {
        return --a;
    }

    function postMinus() public returns(uint) {
        return a--;
    }
}