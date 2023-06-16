// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract ArtStudent {

    string public schoolName = "The Solidity University";
    uint public schoolHour = 5;
}

contract PartTimer {
    string public workPlace = "A pizza shop";
    uint public workingHour = 6;
}

contract Alice is ArtStudent, PartTimer {
    uint public totalHours = schoolHour + workingHour;
}