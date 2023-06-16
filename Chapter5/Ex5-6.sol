// SPDX-License-Identifier: GPL-3.0
// 순차 검색 알고리즘
// 배열의 첫 번째 인덱스부터 마지막 인덱스까지 검색하고자 하는 값을 찾는 것이다.

// fruitArray 배열과 linearSearch 함수를 사용한다.

pragma solidity ^0.8.18;

contract Ex5_6 {

    string[] public fruitArray = ["apple", "banana", "coconut", "durian", "etrog"];

    function linearSearch(string memory _word) public view returns(uint256, string memory) {
        for(uint index = 0; index<fruitArray.length;++index) {
            // 비교하고자 하는 문자열을 모두 해시(hash)로 만들어야 한다. 해시화를 거치면 해당 문자열에 관한
            // 유일무이한 바이트 값을 얻게 된다. 즉, 비교하고자 하는 문자열을 해시화 한 후 두 개의 고유한 
            // 바이트 값을 비교하는 것이다. 두 바이트 값이 같다면 두 개의 문자열이 같다는 의미.
            if(keccak256(bytes(fruitArray[index])) == keccak256(bytes(_word))){
                return (index, fruitArray[index]);
            }
        }
        return(0, "Nothing");
    }    
}