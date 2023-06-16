// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

contract Computer {
    Monitor public monitor;
    SystemUnit public systemUnit;

    constructor() {
        monitor = new Monitor("DM12");
        systemUnit = new SystemUnit();
    }

    function getAllNames() public view returns (string memory, string memory) {
        return (monitor.getName(), systemUnit.getName());
    }

    function start() public view returns (string memory, string memory) {
        return (systemUnit.getName(), systemUnit.turnOn());
    }
}

contract Monitor {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function show() public pure returns (string memory) {
        return "show";
    }
}

contract SystemUnit {
    string public name = "XG12";

    function getName() public view returns (string memory) {
        return name;
    }

    function turnOn() public pure returns (string memory) {
        return "turnOn";
    }
}
