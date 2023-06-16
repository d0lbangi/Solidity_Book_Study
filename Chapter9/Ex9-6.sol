// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;


/*
[vm]from: 0x5B3...eddC4to: Ex9_6.sendEther() 0x38c...24C73value: 1000000000000000000 weidata: 0x0e2...9df22logs: 1hash: 0x98e...f1b8a
status	true Transaction mined and execution succeed
transaction hash	0x98ea622e0dd672544d619cea84b503c50d23404d6966c5c0dbf05864921f1b8a
from	0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
to	Ex9_6.sendEther() 0x38cB7800C3Fddb8dda074C1c650A155154924C73
gas	34174 gas
transaction cost	29716 gas 
execution cost	8652 gas 
input	0x0e2...9df22
decoded input	{}
decoded output	{}
logs	[
	{
		"from": "0x38cB7800C3Fddb8dda074C1c650A155154924C73",
		"topic": "0x0368838220383a15f8cb55f018fd7c72a2a7b39241ce69b3633d92b2dcb3aca7",
		"event": "Obtain",
		"args": {
			"0": "0x38cB7800C3Fddb8dda074C1c650A155154924C73",
			"1": "1000000000000000000",
			"from": "0x38cB7800C3Fddb8dda074C1c650A155154924C73",
			"amount": "1000000000000000000"
		}
	}
]
val	1000000000000000000 wei
*/

contract Ex9_6 {

    event Obtain(address from, uint amount);

    // receive()함수는 Ex9_6 스마트 컨트랙트가 이더를 받을 수 있게 도와준다. Ex9_6 스마트 컨트랙트는 receive 함수를 통해 이더를 받을 수 있게 된다.
    // 이더를 받게되면 스마트 컨트랙트에 있는 receive 함수가 실행되고 해당 함수는 Obtain 이벤트를 출력한다.
    // from은 유저의 주소가 아닌 예제 9_6의 스마트 컨트랙트 주소다.
    receive() external payable {
        emit Obtain(msg.sender, msg.value);
    }

    // this 는 Ex9_6의 스마트 컨트랙트의 주소를 갖고 온다.
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    // 함수 sendEther에 있는 transfer 함수를 통해 이더를 받게 되면 receive 함수는 가스 2300 gwei를 소비하게 된다.
    function sendEther() public payable {
        payable(address(this)).transfer(msg.value);
    }
}