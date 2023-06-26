// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract quiz3 {

    uint[] arr;
    function arrPop() public {
        arr.pop();
    }

    function arrPopWithTryCatch() public returns(bool) {
        try this.arrPop() {
            return (true);
        } catch {
            return (false);
        }
    }
}