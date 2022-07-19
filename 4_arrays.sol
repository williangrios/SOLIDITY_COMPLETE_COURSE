//Writed by: Willian G Rios, 16/07/2022

// SPDX-License-Identifier: MIT states that others can use your source code with respect to the MIT open-source license
pragma solidity 0.8.7;

contract HelloWorld{

    //array of many items
    uint[] balances;
    string[] names;

    // fixed size array
    string[7] fixedArray = ["Maria", "Joao", "Jose", "Marcio", "Will", "Junior", "Pereira"];

    function getName (uint index) public view returns (string memory){
        return names[index];
    }

    function getAllNames() public view returns (string[] memory){
        return names;
    }

    function addName(string memory newName) public {
        // Append to array
        // This will increase the array length by 1.
        names.push(newName);
    }

    function removeLastName () public {
        // Remove last element from array
        // This will decrease the array length by 1
        names.pop();
    }

    function lengthNames() public view returns (uint){
        return names.length;
    }

    function removeAtIndex(uint index) public {
        // Delete does not change the array length.
        // It resets the value at index to it's default value,
        // in this case ""
        delete names[index];
    }
    
}