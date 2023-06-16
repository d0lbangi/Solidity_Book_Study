// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex2_8 {

    bool a = 3>4;
    bool b = 3<4;
    bool c = 5>=2;
    bool d = 5<=5;
    bool e = 3==2;
    bool f = 3!=2;

    function comparison() public view returns(bool, bool, bool, bool, bool, bool) {
        return(a,b,c,d,e,f);
    }
}