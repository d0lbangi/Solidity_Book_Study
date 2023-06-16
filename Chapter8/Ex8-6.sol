// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

library Math {
    function add(uint8 a, uint8 b) internal pure returns (uint8) {
        require(a+b >= a, "Error: addition overflow");
        return a+b;
    }
}

contract Ex8_6 {
    using Math for uint8;

    // 255 + 1 = 0 , overflow 발생
    function overflow(uint8 _num1, uint8 _num2) public pure returns(uint8) {
        return _num1 + _num2;
    }

    // 255 + 1 = "VM error: revert." , overflow 발생하지 않고 오류가 발생할 것을 예상상
    function noOverflow1(uint8 _num1, uint8 _num2) public pure returns(uint8) {
        return Math.add(_num1, _num2);
    }
    
    // 255 + 1 = "VM error: revert." , overflow 발생하지 않고 오류가 발생할 것을 예상상
    function noOverflow2(uint8 _num1, uint8 _num2) public pure returns(uint8) {
        return _num1.add(_num2);
    }
}