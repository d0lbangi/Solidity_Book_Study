// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract quiz9_1 {

    function sendEther(address _address) public payable {
        (bool success, ) = _address.call{value:msg.value}("");
        require(success, "Failed");
    }
}
