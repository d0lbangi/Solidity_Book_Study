// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

import "./Ex8_4_1.sol";
import "./In/Ex8_4_2.sol";

contract Alice is ArtStudent, partTimer {

    uint public totalHours = schoolHours + workingHours;
}
