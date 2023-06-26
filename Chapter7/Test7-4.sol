// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract quiz4 {

    function output5() public pure returns(uint) {
        return 5;
    }

    function output5WithTryCatch() public view returns(uint) {
        try this.output5() returns (uint value) {
            return value;
        } catch {
            return 0;
        }
    }
}
