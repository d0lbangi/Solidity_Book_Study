// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex8_2 {

    uint public a;
    uint public b;

    modifier plusA() {
        a += 1;
        _;
    }

    modifier plusB() {
        _;
        b += 1;
    }

    function mulA() public plusA() {
        a *= 2;
    }

    function mulB() public plusB() {
        b *= 2;
    }
}