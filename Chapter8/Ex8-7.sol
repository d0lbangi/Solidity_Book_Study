// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract Ex8_7 {

    // SafeMath에 의해서 오류가 발생해 트랜잭션이 실패할 것이다. 결론적으로 오버플로는 발생하지 않는다.
    using SafeMath for uint;
    uint constant public MAX_UINT = ~uint(0);

    function addition(uint _num) public pure returns(uint) {
        return MAX_UINT.add(_num);
    }
    function multiplication(uint _num) public pure returns(uint) {
        return MAX_UINT.mul(_num);
    }
    function division(uint _num) public pure returns(uint) {
        return MAX_UINT.div(_num);
    }
    // 나머지 함수수
    function modulo(uint _num) public pure returns(uint) {
        return MAX_UINT.mod(_num);
    }
    function substraction(uint _num) public pure returns(uint) {
        return MAX_UINT.sub(_num);
    }
}