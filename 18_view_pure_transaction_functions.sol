//Writed by: Willian G Rios, 19/07/2022

// SPDX-License-Identifier: MIT states that others can use your source code with respect to the MIT open-source license
pragma solidity 0.8.7;


contract ViewAndPure{

    
    //pure (call): state variables will not be read or changed
    //view (call): state variables will be read but not changed
    //default: mode transaction 

    //obs:call mode dont spend eth/wei
    //         transaction mode spend eth/wei

    uint public numClients = 3;    

    //transaction
    function setNumClients(uint newNumClients) public  {
        numClients = newNumClients;
    }


    //view
    function returnNumClients () public view returns (uint){
        return numClients;
    }

    //pure
    function sumAB(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

}