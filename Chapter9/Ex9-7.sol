// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

/* 함수 receive를 명시하지 않고 함수 fallback에 payable을 적용해 이더를 받으려고 했기 때문에 발생하였다. 즉 receive를 통해 이더를 받는 것을 권장한다.
Warning: This contract has a payable fallback function, but no receive ether function. Consider adding a receive ether function.
 --> Chapter9/Ex9-7.sol:4:1:
  |
4 | contract Ex9_7 {
  | ^ (Relevant source part starts here and spans across multiple lines).
Note: The payable fallback function is defined here.
 --> Chapter9/Ex9-7.sol:8:5:
  |
8 |     fallback() external payable {
  |     ^ (Relevant source part starts here and spans across multiple lines).
*/

contract Ex9_7 {

    event Obtain(address from, uint amount);

    fallback() external payable {
        emit Obtain(msg.sender, msg.value);
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function sendEther() public payable {
        payable(address(this)).transfer(msg.value);
    }
}