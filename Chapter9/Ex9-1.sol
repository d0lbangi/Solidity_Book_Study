// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;


contract Ex9_1 {

    function getBalance(address _address) public view returns(uint) {
        return _address.balance;
    }

    function getMsgvalue() public payable returns(uint) {
        return msg.value;
    }
}