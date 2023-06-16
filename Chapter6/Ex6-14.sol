// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

// 상속을 받을 때 모든 변수와 함수를 상속받기 때문에 동일한 함수 혹은 변수를 여러 번 명시하게 될 경우 오류가 발생한다.

contract ArtStudent {
    uint public Times = 7;
    function time() public pure returns(uint) {
        return 3;
    }
}

contract PartTimer {
    function time() public pure returns(uint) {
        return 13;
    }
}

contract Alice is ArtStudent, PartTimer {
    // ArtStudent 상속
    uint public Times = 7;
    function time() public pure returns(uint) {
        return 3;
    }

    // PartTImer 상속
    function time() public pure returns(uint) {
        return 13;
    }

    uint public Times = 2;
}