// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract quiz1 {

    function revertFuntion(uint _num) public pure returns(uint) {
        if(_num > 6) {
            revert("_num must not be more than 5");
        } 
        return _num;
    }
}