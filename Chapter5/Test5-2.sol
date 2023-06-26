// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Test5_2 {


    uint[] public numbers;

    function addNumbers(uint _numbers) public {
        numbers.push(_numbers);
    }

    function getNumbers(uint _numbers) public view returns(uint) {
        return numbers[_numbers];
    }

    function deleteNumber() public {
        numbers.pop();
    }
}
