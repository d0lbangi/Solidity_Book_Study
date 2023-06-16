// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Math {

    function division(uint _num1, uint _num2) public pure returns(uint) {
        return _num1/_num2;
    }
}

contract Ex7_6 {
    event Information(string _error);
    Math math = new Math();

    function divisionWithTryCatch(uint _num1, uint _num2) public returns(uint) {
        try math.division(_num1, _num2) returns (uint result) {
            // 
            // 위 함수를 실행하면 try 블록에서 revert 오류가 무조건 발생할 텐데, 이 오류는 catch 블록엣어 처리하지 못한다.
            revert("Alwayys failure");
            emit Information("Success");
            return(result);
        } catch {
            emit Information("Failure");
            return(0);
        }
    }
}