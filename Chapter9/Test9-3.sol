// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Math {
    function mul(uint _num1, uint _num2) public pure returns(uint) {
        return _num1 * _num2;
    }
}

/**
위의 코드는 _address에 지정된 주소의 컨트랙트에서 "mul(uint256, uint256)" 시그니처와 함께 함수를 
호출하는 부분입니다. 이를 이해하기 위해서는 함수 시그니처와 abi.encodeWithSignature 함수에 대한 이해가 
필요합니다.

abi.encodeWithSignature: Solidity의 abi.encodeWithSignature 함수는 함수 시그니처와 해당 함수에 
전달할 인자를 인코딩하는 데 사용됩니다. 함수 시그니처는 함수의 이름과 인자 타입을 조합한 것입니다.

"mul(uint256, uint256)": 위의 코드에서는 "mul" 함수를 호출하고 있습니다. mul 함수는 두 개의 uint256 
타입의 인자를 받습니다. 따라서 "mul(uint256, uint256)"는 이 함수의 시그니처를 나타냅니다.

abi.encodeWithSignature("mul(uint256, uint256)", _num1, _num2): 위의 코드는 mul 함수의 
시그니처와 _num1, _num2를 인자로 사용하여 호출할 때 필요한 데이터를 인코딩하는 부분입니다. _num1과 _num2는 
함수에 전달할 실제 값입니다.

_address.call(...): _address에 지정된 주소의 컨트랙트에서 함수를 호출하는 부분입니다. call 함수를 
사용하여 함수 호출을 수행합니다. 이때, abi.encodeWithSignature로 인코딩된 함수 시그니처와 인자를 
전달합니다.

(bool success, bytes memory output) = ...: 함수 호출의 결과인 bool 값인 success와 bytes 형식인 
output에 결과를 할당합니다. call 함수는 호출 성공 여부와 호출 결과를 반환하는데, 이를 success와 
output 변수에 저장합니다.

따라서, 위의 코드는 _address에 지정된 주소의 컨트랙트에서 "mul(uint256, uint256)" 시그니처와 함께 
_num1과 _num2를 전달하여 함수를 호출하고, 호출 결과를 success와 output 변수에 저장하는 역할을 합니다.
*/


contract quiz9_3 {
    // Math 컨트랙트의 함수를 호출하는 함수
    function callMath(address _address, uint _num1, uint _num2) public returns(bytes memory) {
        // 주어진 주소의 컨트랙트에서 "mul(uint256, uint256)" 시그니처와 함께 호출하는데, _num1과 _num2를 인코딩하여 전달한다.
        (bool success, bytes memory output) = _address.call(abi.encodeWithSignature("mul(uint256, uint256)", _num1, _num2));
        // 호출이 성공하면 success 값은 true이고, 호출 결과는 output에 저장된다.
        require(success, "Failed");
        // 호출 결과를 반환한다.
        return output;
    }
}