// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract quiz9_2 {

    receive() external payable {}

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function sendEther() public payable {
        payable(address(this)).transfer(msg.value);
    }
}
