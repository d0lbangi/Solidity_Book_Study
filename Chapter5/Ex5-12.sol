// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex5_12 {
    
    uint[] public numbers = [1,2,3];

    function copy() public view returns(uint[] memory, uint[] memory) {
        uint[] memory memoryNumbers = numbers;
        memoryNumbers[0] = 11;
        return (numbers, memoryNumbers);
    }
}