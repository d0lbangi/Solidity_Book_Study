// SPDX-License-Identifier: GPL-3.0
// view가 적용된 myFun 함수 외부에 있는 변수를 이 함수 로직에 선언할 수는 있지만, 해당 변수의 값을 직접 변경할 수는 없다.
// myFun 함수의 외부에 있는 a 변수를 myFun 함수 내부에서 a=4 를 통해 변경하고 있으므로 오류가 발생할 것이다.

pragma solidity ^0.8.18;

contract Ex3_13 {
    
    uint public a = 3;
    function myFun() public view returns(uint) {
        a = 4;
        return a;
    }
}