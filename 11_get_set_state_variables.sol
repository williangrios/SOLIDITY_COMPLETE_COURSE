//Writed by: Willian G Rios, 19/07/2022
// SPDX-License-Identifier: MIT states that others can use your source code with respect to the MIT open-source license
pragma solidity 0.8.7;

contract GetSet{

    string nameUser;

    function getName() public view returns (string memory) {
        return nameUser;
    }

    function setName(string memory newName) public {
        nameUser = newName;
    }

}
