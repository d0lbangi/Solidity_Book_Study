// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex3_16 {
    
    function myFun(string calldata str) external pure returns(string memory) {
        return str;
    }
}