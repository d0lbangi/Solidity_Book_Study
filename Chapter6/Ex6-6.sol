// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Student {

    string public schoolName = "The University of Solidity";
    string public major;
    constructor(string memory _major) {
        major = _major;
    }
}

// 상속과 동시에 매개변수를 입력받음
contract ArtStudent is Student("Art") {
}

// degree 변수를 선언해서 이 변수를 부모 스마트컨트랙트 Student의 생성자에 입력했다.
contract MusicStudent is Student {
    string internal degree = "Music";
    constructor() Student(degree) {
    }
}

// 자신이 생성자를 정의하고 이 생성자의 매개변수 _major를 받는다 그리고 나서 부모 스마트 컨트랙트 Student의 생성자 매개변수에 다시 대입한다.
// Student로부터 상속받게 될 변수 Major 의 초깃값은 MathStudent의 생성자 매개변수다.
contract MathStudnet is Student {
    constructor(string memory _major) Student(_major) {
    }
}