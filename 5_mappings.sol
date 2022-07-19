//Writed by: Willian G Rios, 16/07/2022

// SPDX-License-Identifier: MIT states that others can use your source code with respect to the MIT open-source license
pragma solidity 0.8.7;

contract HelloWorld{

    //like a dictionary
    //sintax mapping(keyType => valueType)
    //keyType can be any type, including mapping or an array
    mapping(address => uint) balances;

    function getBalance(address addressUser) public view returns (uint){
        return balances[addressUser];
    }

    function setBalance(address newUser, uint newBalance) public  {
        balances[newUser] = newBalance;
    }

    function removeBalance(address addressUser) public {
        // Reset the value to the default value.
        delete balances[addressUser];
    }

}