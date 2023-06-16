// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex3_19 {
    
    function funExt() external pure returns(uint) {
        return 2;
    }

    function funPri() private  pure returns(uint) {
        return 3;
    }

    // funExt의 가시성 지정자는 외부 접근만 가능한 external이기 때문에 오류 발생
    // external은 내부 접근이 불가눙하다.
    // function outPutExt() public pure returns(uint) {
    //     return funExt();
    // }

    function ouPutPri() public pure returns(uint) {
        return funPri();
    }
}   