//Writed by: Willian G Rios, 20/07/2022
// SPDX-License-Identifier: MIT 
pragma solidity 0.8.7;

//the constructor code executed once when the contract is
//created is typically used to initialize contract state
//initialize variable states that not will be changed

// the constructor can be public or internal
// a internal constructor marks the contract as abstract

contract Base{

    uint  totalSupply;
    uint  decimals;
    address  admin;

    constructor (uint initialSupply)  {
        decimals = 18;
        admin = msg.sender;
        totalSupply = initialSupply;
    }

}


contract Child is Base {
    constructor (uint initialSupply) A(initialSupply) public {
        
    }
}