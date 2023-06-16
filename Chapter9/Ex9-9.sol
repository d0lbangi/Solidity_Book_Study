// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract Math {
    uint result = 0;

    function add(uint256 _num1, uint256 _num2) public {
        result = _num1 + _num2;
    }

    function returnResult() public view returns (uint) {
        return result;
    }
}

contract Buttons {
    function addButton(address _addr, uint _num1, uint _num2) public {
        (bool success, ) = _addr.call(
            abi.encodeWithSignature("add(uint256,uint256)", _num1, _num2)
        );
        require(success, "Failed");
    }

    function showResult(address _addr) public returns (uint) {
        (bool success, bytes memory result) = _addr.call(
            abi.encodeWithSignature("returnResult()")
        );
        require(success, "Failed");
        return abi.decode(result, (uint));
    }
}
