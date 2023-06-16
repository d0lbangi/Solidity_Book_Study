// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract Random {

    event PaidAddress(address indexed sender, uint256 payment);
    event WinnerAddress(address indexed winnder);

    modifier onlyOwner {
        require(msg.sender == owner, "Ownable : caller is not the owner");
        _;
    }

    // 1번째 매핑
    // 첫 번째 매핑의 키 값은 게임의 회차를 나타내고, 누군가 우승한다면 게임의 회차는 바뀔 것이다.
    // 즉 첫 번째 매핑의 키 값이 변경되면 두 번쨰 매핑 역시 초기화된다.

    // 2번째 매핑
    // 특정 주소를 두 번째 매핑에 대입해 true가 나온다면 그 주소는 이미 게임에 참여한 것이다. 즉 매핑에 주소를 입력했을 때 false가 나오는 주소만 게임에 참여 가능
    // 다시 말해 두번째 매핑의 값이 false 인 주소가 참여하고 난 후 이 주소의 매핑 값을 true로 변경해 중복 참여를 방지한다.
    mapping (uint256 => mapping(address => bool)) public paidAddressList;

    address public owner;

    // == private으로 되어있는 이유는 게임에서 이길 수 있는 요소를 제공할 수 있으므로 지정하여 아무도 접근하지 못하게 했다. ==== //
    uint private winnerNumber = 0;
    // === 변수 key1, key2는 winnerNubmer에 입력될 난수를 발생할 때 쓰이는 요소 ===== //
    string private key1;
    uint private key2;

    uint public round = 1;
    // 현재 몇 번째 참가자인지 의미미
    uint public playNumber = 0;

    constructor(string memory _key1, uint _key2) {
        owner = msg.sender;
        key1 = _key1;
        key2 = _key2;
        winnerNumber = randomNumber();
    }

    receive() external payable {
        require(msg.value == 10**16, "Must be 0.01 ether.");
        // 중복 참여 여부를 판가름
        // 참여하는 주소가 paidAddressList 매핑에 false를 반환한다면 중복 참여한 주소가 아니므로 트랜잭션은 실패하지 않는다
        require(paidAddressList[round][msg.sender] == false, "Must be the first time.");

        // 두 개의 require를 지나면 아래와 같이 값이 변경되어 게임에 참여한 주소로 더 이상 참여를 할 수 없다.
        paidAddressList[round][msg.sender] = true;
        ++playNumber;

        if(playNumber == winnerNumber){
            // msg.sender는 게임에 참여한 살마의 주소, 즉 우승자의 주소소
            (bool success, ) = msg.sender.call{value:address(this).balance}("");
            require(success, "Failed");
            playNumber = 0;
            ++round;
            winnerNumber = randomNumber();
            emit WinnerAddress(msg.sender);
        } else {
            emit PaidAddress(msg.sender, msg.value);
        } 
    }

    // 현재 4가지 요소(key1, key2, block.timestamp, block.number)를 더해서 num이라는 변수에 대입하고 있다
    // key1 변수는 문자열이므로 uint(keccak256(abi.encode(key1)))와 같은 방식으로 정수형으로 변환한다.

    // 함수 randomNumber와 같은 방식으로 난수를 생성하는 것은 보안적으로 취약하며, key1과 key2를 스마트 컨트랙트에 저장하는 것은 보안적으로 치명적이다.
    // 보통은 체인링크에서 제공하는 스마트 컨트랙트를 통해 난수를 생성한다.
    function randomNumber() private view returns(uint) {
        uint num = uint(keccak256(abi.encode(key1))) + key2 + (block.timestamp) + (block.number);
        return (num - ((num / 10) *10)) +1;
    }

    function setSecretKey(string memory _key1, uint _key2) public onlyOwner() {
        key1 = _key1;
        key2 = _key2;
    }

    function getSecretKey() public view onlyOwner() returns(string memory, uint) {
        return(key1, key2);
    }

    function getWinnerNumber() public view onlyOwner() returns(uint256) {
        return winnerNumber;
    }

    function getRound() public view returns(uint256) {
        return round;
    }

    function getbalance() public view returns(uint256) {
        return address(this).balance;
    }
}