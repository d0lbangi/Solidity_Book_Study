// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;


contract Ex9_2 {

    address public owner;
    modifier onlyOwner() {
        require(owner == msg.sender, "Error: Caller is not the owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function getBalance(address _address) public view onlyOwner() returns(uint) {
        return _address.balance;
    }

    function getMsgValue() public payable onlyOwner() returns(uint) {
        return msg.value;
    }
}