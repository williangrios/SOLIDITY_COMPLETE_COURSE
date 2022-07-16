//Writed by: Willian G Rios, 16/07/2022

// SPDX-License-Identifier: MIT states that others can use your source code with respect to the MIT open-source license
pragma solidity 0.8.7;

//function group of reusable code with can be called in our program

contract HelloWorld{

    //sintax
    //function functionName(parameterList) scope returns (typeData){
        //statements
    //}


    //example
    function sumTwoNumbers(uint a, uint b) public pure returns (uint){
        uint answerSum = a + b;
        return answerSum;
    }

}