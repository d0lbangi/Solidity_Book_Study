// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract ArtStudent {
    uint private schoolHours;
    constructor(uint _schoolHours){
        schoolHours = _schoolHours;
    }

    function time() public virtual returns(uint) {
        return schoolHours;
    }
}

contract PartTimer {
    uint private workingHours;
    constructor(uint _workingHours){
        workingHours = _workingHours;
    }
    function time() public virtual returns(uint){
        return workingHours;
    }
}

// 두 부모 스마트 컨트랙트를 상속받으려면 생성자의 매개변수를 넣어줘야 한다.
// 같은 이름을 가진 함수가 존재하면 두 함수 모두 오버라이딩해서 함수를 중복해서 명시하는 오류를 피할 수 있다.
// return super.time()은 가장 나중에 오버라이딩된 부모 스마트 컨트랙트 함수의 로직을 갖고 온 것이다.
contract Alice is ArtStudent(5), PartTimer(6) {
    function time() public override(ArtStudent, PartTimer) returns(uint) {
        return super.time();
    }
}