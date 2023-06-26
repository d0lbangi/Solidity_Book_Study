// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

    contract Student {
        
        function university() public pure virtual returns(string memory) {
            return "The University of Solidity";
        }
    }

    contract Quiz3 is Student {
        
    Student internal student = new Student();
    function university() public pure override returns(string memory) {
        return "The University of Blockchain";
    }

}