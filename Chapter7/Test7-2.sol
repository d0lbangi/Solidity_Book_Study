// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract quiz2 {

    function requireFunction(uint _num) public pure returns(uint) {
        require(_num <= 5, "_num must not be more than 5");
        return _num;
    }
}
