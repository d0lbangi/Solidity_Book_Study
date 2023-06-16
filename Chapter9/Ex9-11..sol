// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract Points {

    uint public total;

    event From(address from);

    function addPoints(uint _point) public {
        total += _point;
        emit From(msg.sender);
    }
}

contract UserInfo {

    // delegatecall로 Points 스마트 컨트랙트의 addPoints 함수를 호출하면 addPoints 함수는 UserInfo 스마트 컨트랙트의 total 변수에 값을 저장할 것이다.
    // 즉 UserInfo 스마트 컨트랙트에도 변수 total이 필요하다.
    uint public total;

    function pointUpWithCall(address _address, uint _point) public {
        (bool success, ) = _address.call(
            abi.encodeWithSignature("addPoints(uint256)",_point)
        );
        require(success, "Failed");
    }

    // delegatecall을 사용하려면 UserInfo와 Points 스마트 컨트랙트는 같은 변수 total을 정의해야 한다는 것이다.
    // pointUpWithDelegateCall는 delegatecall을 통해 Points 스마트 컨트랙트의 addPoints 함수를 호출하므로 delegatecall이 명시된 UserInfo 스마트 컨트랙트에 값이 저장된다.
    function pointUpWithDelegateCall(address _address, uint _point) public {
        (bool success, ) = _address.delegatecall(
            abi.encodeWithSignature("addPoints(uint256)",_point)
        );
        require(success, "Failed");
    }
    
}


/*
 pointUpWithCall과 pointUpWithDelegateCall 함수에서 Points 스마트 컨트랙트의 addPoints 함수를 호출하는 방식의 차이 때문에 발생하는 것입니다.

pointUpWithCall 함수:

pointUpWithCall 함수에서는 _address.call()을 사용하여 Points 스마트 컨트랙트의 addPoints 함수를 호출합니다.
이 호출은 _address가 가리키는 Points 컨트랙트의 addPoints 함수를 직접 실행합니다.
호출된 addPoints 함수에서 total += _point 문장이 실행되며, Points 컨트랙트의 total 변수에 _point 값을 더합니다.
Points 컨트랙트의 total 변수만 업데이트됩니다.
pointUpWithDelegateCall 함수:

pointUpWithDelegateCall 함수에서는 _address.delegatecall()을 사용하여 Points 스마트 컨트랙트의 addPoints 함수를 호출합니다.
delegatecall은 호출된 함수의 컨텍스트를 현재 컨트랙트로 변경하여 실행합니다.
호출된 addPoints 함수는 UserInfo 컨트랙트의 컨텍스트에서 실행되며, UserInfo 컨트랙트의 변수와 상태를 변경할 수 있습니다.
Points 컨트랙트의 total 변수 대신 UserInfo 컨트랙트의 total 변수에 _point 값을 더합니다.
따라서, pointUpWithDelegateCall 함수에서는 UserInfo 컨트랙트의 total 변수가 업데이트되며, Points 컨트랙트의 total 변수는 변경되지 않습니다.
결과적으로, pointUpWithCall 함수는 Points 컨트랙트의 total 변수를 업데이트하여 3을 반환하지만, pointUpWithDelegateCall 함수는 UserInfo 컨트랙트의 total 변수를 업데이트하여 99를 반환합니다.

*/