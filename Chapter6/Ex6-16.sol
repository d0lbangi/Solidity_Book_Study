// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

abstract contract System {

    // 변수 version과 errorPass는 자식 스마트 컨트랙트에서 versionCheck와 errorCheck 함수를 구현할 때 자식 스마트 컨트랙트에 따라 특정한 값을 넣어줄 예정이다.
    uint internal version;
    bool internal errorPass;

    // 이 함수들은 System 스마트 컨트랙트를 상속받는 자식 스마트 컨트랙트에서 완성될 함수다.
    function versionCheck() internal virtual;
    function errorCheck() internal virtual;
    
    // 컴퓨터와 스마트폰이 켜질 때 장비의 버전과 오류 여부를 확인한다. 즉, 두 스마트 컨트랙트는 boot라는 함수를 상속받아 실행이 가능하다.
    function boot() public returns(uint, bool){
        versionCheck();
        errorCheck();
        return (version, errorPass);
    }
}

// Computer, SmartPhone 스마트 컨트랙트를 배포하면 System으로 상속받은 boot 함수를 실행할 수 있다. 그리고 나서 version과 errorPass를 반환하게된다.
// Computer와 SmartPhone 의 boot 함수는 서로 다른 값을 반환한다.
// 추상 스마트 컨트랙트 System은 미구현된 함수 versionCheck와 errorCheck의 설계도를 Computer와 SmartPhone 에 제공함으로써 각각의 상황에 맞게 versionCheck과 errorCheck 함수를 구현하도록 의도했다.

contract Computer is System {
    function versionCheck() internal override {
        version = 3;
    }

    function errorCheck() internal override {
        errorPass = true;
    }
}

contract SmartPhone is System {
    function versionCheck() internal override {
        version = 25;
    }

    function errorCheck() internal  override {
        errorPass = false;
    }
}