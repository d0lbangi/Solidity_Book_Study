// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex8_1 {

    modifier numMoreThan1(uint _num) {
        require(_num>1, "_num must be more than 1");
        _;
    }

    // 각 함수가 실행될 때 함수의 매개변수 _num은 numMoreThan1 모디파이어의 매개변수 _num에 입력된다.

    function getvalue1(uint _num) public pure numMoreThan1(_num) returns(uint) {
        return _num;
    }
    function getvalue2(uint _num) public pure numMoreThan1(_num) returns(uint) {
        return _num * 2;
    }
}