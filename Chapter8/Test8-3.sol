// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract quiz8_3 {

    enum Switch { turnOn, turnOff }

    Switch public lightStatus = Switch.turnOn;

    function turnOnTheLight() public {
        require(lightStatus == Switch.turnOn, "The light must be turned on");
        lightStatus = Switch.turnOn;
    }

    function turnOffTheLight() public {
        require(lightStatus == Switch.turnOff, "The light must be turned off");
        lightStatus = Switch.turnOff;
    }
}
