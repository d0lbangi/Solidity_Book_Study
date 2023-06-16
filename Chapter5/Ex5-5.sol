// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Ex5_5 {
    
    uint[] public array = [97,98,99];

    function getLength() public view returns(uint) {
        return array.length;
    }

    // 마지막 자리의 배열의 값도 지우고 배열의 크기도 줄어든다.
    function popArray() public {
        array.pop();
    }

    // 선택한 _index의 배열의 값을 지우는 것이이지 배열의 크기는 줄어들지 않는다.
    // delete에 의해 삭제된 값은 정수형 배열일 경우 0으로 덮어씌우기 때문이다. 삭제하고자 하는 배열의
    // 자료형이 문자열이면 공백으로 덮어씌운다.
    // 즉, 매핑에서도 봤듯이 delete 키워드를 사용하면 배열의 자료형의 기본값으로 배열을 덮어쓴다.
    function deleteArray(uint _index) public {
        delete array[_index];
    }
}