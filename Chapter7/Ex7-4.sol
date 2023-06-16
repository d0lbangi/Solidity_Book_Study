// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Adult {

    uint public age;

    // Adult를 인스턴스화 하는 작업
    constructor(uint _age) {
        require(_age > 19, "should be more than 19 years old");
        age = _age;
    }
}

contract Ex7_4 {
    event Information(string _error);

    function instantiate(uint _age) public returns(uint) {
        // Adult가 인스턴스화가 잘 되면 인스턴스 adult를 try 블록에서 사용할 수 있다.
        try new Adult(_age) returns(Adult adult) {
            emit Information("Success");
            return(adult.age());
        } catch {
            emit Information("Failed : the default age is 20");
            Adult adult = new Adult(20);
            return(adult.age());
        }
    }
}