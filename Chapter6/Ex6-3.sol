// SPDX-License-Identifier: GPL-3.0
// 배열과 같은 참조 타입에는 immutable을 적용할 수 없다.

pragma solidity ^0.8.18;

contract Ex6_3 {
    
    //uint[] public immutable arr;
    //uint public constant num1;
    uint public immutable num2;

    constructor(uint _num) {
        num2 = _num;
    }

    // function change() public pure returns(uint) {
    //     num2 = 10;
    // }
}