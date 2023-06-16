// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

// Receiver 스마트 컨트랙트는 이더를 받게 도와주는 receive함수가 없으며 fallback함수는 payablee이 적용되지 않은 상태이므로 해당 스마트 컨트랙트는 이더를 받을 수 없는 상태이다.
// 그러나 함수를 호출하면서 이더를 보낼 때 receive 함수 또는 payable이 적용된 fallback 함수는 필요하지 않다.
// 함수 ouPut에 payable을 적용하면 이 함수가 호출되면섯 Receiver 스마트 컨트랙트가 이더를 받을 수 있다.
// 즉 호출하려는 함수에 payable을 적용하면 그 함수를 호출하면서 스마트 컨트랙트에 이더를 줄 수 있다.

contract Receiver {

    // info : From 이벤트를 출력시킨 함수명
    // from : 트랜잭션을 보낸 주소 msg.sender
    event From(string info, address from);
    fallback() external {
        ///fallback함수는 이벤트를 출력할 때 자신의 함수명 fallback()과 자신을 호출한 주소 msg.sender를 입력해 From 이벤트를 출력한다.
        emit From("fallback()", msg.sender);
    }

    function outPut() public payable {
        emit From("outPut()", msg.sender);
    }

    // Receiver 스마트 컨트랙트의 현재 이더의 잔액을 wei 단위로 반환한다.
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
}

contract Caller {

    function expectFallback(address _address) public {
        (bool success, ) = _address.call(
            // expectFallback함수는 Receiver에 존재하지 않는 outPut2 함수를 호출하고 있으며 Receiver의 fallback 함수가 대신 호출될 것이다.
            abi.encodeWithSignature("outPut2()")
        );
    require(success, "Failed");
}

// 해당 함수는 Receiver 스마트 컨트랙트의 outPut 함수를 호출하면서 Receiver에게 이더를 보낸다.
// outputWithEther 함수가 실행되면 outPut 함수의 이벤트 From이 출력되는 동시에 Receiver 스마트 컨트랙트가 이더를 받게 된다.
function outPutWithEther(address _address) public payable {
    (bool success, ) = _address.call{value:msg.value}(
        abi.encodeWithSignature("outPut()")
        );
    require(success, "Failed");
    }
}
