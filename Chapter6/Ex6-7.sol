// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

contract Student {

    string private schoolName = "This University of Solidity";
    string internal schoolNumbers = "02-1234-5678";
}

contract ArtStudent is Student {
    // function getSchoolName() public view returns(string memory) {
    //     return schoolName;
    // }

    function getSchoolNumbers() public view returns(string memory){
        return schoolNumbers;
    }
}
