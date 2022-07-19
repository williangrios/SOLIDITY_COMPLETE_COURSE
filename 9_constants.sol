//Writed by: Willian G Rios, 16/07/2022

// SPDX-License-Identifier: MIT states that others can use your source code with respect to the MIT open-source license
pragma solidity 0.8.7;

contract HelloWorld{

// Constants are variables that cannot be modified.
// Using constants can save gas cost.

    string public constant nameProject = "CryptoFOMO";
    uint private constant anyNumber = 10;

    function returnNumber() public pure returns (uint ) {
        return anyNumber;
    }

}

