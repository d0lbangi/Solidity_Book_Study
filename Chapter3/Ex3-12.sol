// SPDX-License-Identifier: GPL-3.0
// 함수 외부에 정의된 변수 a의 값을 직접 변경하지 않고, 간접적으로 변수 a와 5를 더한 값을 변수 b에 대입한 후 출력한다는 점이다.
// 만약 변수 a를 함수 내부에서 직접 변경했다면 오류가 발생했을 것이다. 

pragma solidity ^0.8.18;

contract Ex3_12 {
    
    uint public a = 4;
    function myFun() public view returns(uint) {
        uint b = a + 5;
        return b;
    }

}