// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Animal {

    function getName() public pure virtual returns(string memory) {
        return "Animal";
    }
}

contract Tiger is Animal {

    function getName() public pure override returns(string memory) {
        return "Tiger";
    }
}

contract Turtle is Animal {

    function getName() public pure override returns(string memory) {
        return "Turtle";
    }
}

contract AnimalSet {

    // 두 스마트 컨트랙트 모두 Animal을 상속받았으므로 Animal 자료형을 가질 수 있다.
    // 스마트 컨트랙의 다형성은 두 개의 다른 스마트 컨트랙트가 하나의 자료형으로 묶이지만, 다른 결괏값을 반환하는 것이다.
    Animal public tiger = new Tiger();
    Animal public turtle = new Turtle();

    function getAllNames() public view returns(string memory, string memory) {
        return (tiger.getName(), turtle.getName());
    }

    function whatIsTheName(Animal _animal) public pure returns(string memory) {
        return (_animal.getName());
    }
}
