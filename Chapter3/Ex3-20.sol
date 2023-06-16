// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex3_20 {
    
    function funExt() external pure returns(uint) {
        return 2;
    }

    function outPutExt() public view returns(uint) {
        return this.funExt();
    }
}   