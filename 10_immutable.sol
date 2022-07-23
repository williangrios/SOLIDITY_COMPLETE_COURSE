//Writed by: Willian G Rios, 19/07/2022

// SPDX-License-Identifier: MIT states that others can use your source code with respect to the MIT open-source license
pragma solidity 0.8.7;

contract Immutables{

// Immutable variables are like constants.
// Values of immutable variables can be set inside
// the constructor but cannot be modified afterwards.

    address public immutable walletDeploy;
    uint private immutable anyNumber;

    constructor ( uint anyNum)  {
        walletDeploy = msg.sender;
        anyNumber = anyNum;
    }

    function returnNumber() public view returns (uint ) {
        return anyNumber;
    }

}