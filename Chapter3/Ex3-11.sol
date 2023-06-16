// SPDX-License-Identifier: GPL-3.0
// pure를 적용하려면 함수 외부에 있는 변수를 함수 로직에 선언하지 말아야 한다.
// 컴파일 에러

pragma solidity ^0.8.18;

contract Ex3_11 {
    
    uint public a = 3;
    function myFun() public pure returns(uint) {
        a = 4;
        return a;
    }
}