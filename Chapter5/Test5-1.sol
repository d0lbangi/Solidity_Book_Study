// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Test5_1 {

    mapping (address => string) public name;

    function addName(address _key, string memory _value) public {
        name[_key] = _value;
    }

    function getName(address _key) public view returns(string memory _value) {
        return name[_key];
    }

    function deleteName(address _key) public {
        delete name[_key];
    }

}
