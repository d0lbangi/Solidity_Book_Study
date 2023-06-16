// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex2_13 {

    uint constant a = 13;
    string constant b = "hi";

    function PlusA() public pure returns(uint) {
        return a+10;
    }

    // function changeB() public {
    //     b = "Hello"; // 에러 발생
    // }
}