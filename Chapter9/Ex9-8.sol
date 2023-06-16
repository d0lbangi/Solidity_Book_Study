// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract Ex9_8 {

    // Ex9_8 의 생성자는 payable이 적용될 시 Ex9_8 스마트 컨트랙트가 배포와 동시에 이더를 받을 수 있다는 점이다.
    constructor() payable {

    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
}