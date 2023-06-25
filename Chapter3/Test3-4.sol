// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Test3_4 {

    function returnTwoValues() public pure returns (string memory, uint) {

        return ("Hello Solidity", 5);
    }
}