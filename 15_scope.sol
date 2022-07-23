//Writed by: Willian G Rios, 16/07/2022

// SPDX-License-Identifier: MIT states that others can use your source code with respect to the MIT open-source license
pragma solidity 0.8.7;


contract Scope{
    //state variables vs local variables
    //local variables will superceed state variables
    
    
    //state variables declared here
    uint a = 5;

    function sumTwoNumbers() public pure returns (uint){
        //local variables
        uint a = 1;
        uint b = 2;
        return a + b;

        //result will be 3, not 7
    }

}