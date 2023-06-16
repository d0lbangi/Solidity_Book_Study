// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.6.0;

contract Ex9_5 {

    // from : 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
    // to : Ex9_5.sendEther(address) 0xEf9f1ACE83dfbB8f559Da621f4aEA72C6EB10eBf
    /*
    [
	    {
            "from": "0xEf9f1ACE83dfbB8f559Da621f4aEA72C6EB10eBf",
            "topic": "0x0368838220383a15f8cb55f018fd7c72a2a7b39241ce69b3633d92b2dcb3aca7",
            "event": "Obtain",
            "args": {
                "0": "0xEf9f1ACE83dfbB8f559Da621f4aEA72C6EB10eBf",
                "1": "2000000000000000000",
                "from": "0xEf9f1ACE83dfbB8f559Da621f4aEA72C6EB10eBf",
                "amount": "2000000000000000000"
		    }
	    }
    ] 
    */

    event Obtain(address from, uint amount);

    function() external payable {
        emit Obtain(msg.sender, msg.value);
    }

    function getBalance(address _address) public view returns(uint) {
        return _address.balance;
    }

    function sendEther(address payable _address) public payable {
        _address.transfer(msg.value);
    }
}

