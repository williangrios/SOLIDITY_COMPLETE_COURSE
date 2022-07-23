//Writed by: Willian G Rios, 20/07/2022
// SPDX-License-Identifier: MIT 
pragma solidity 0.8.7;


contract Modifiers{

    uint supply = 10000;
    address admin = msg.sender;

    function getSupply() external view returns (uint) {
        return supply;
    }

    function mint(uint amount)  external onlyAdmin() justTen(amount) {
        supply += amount;
    }
    
    modifier onlyAdmin() {
        require(admin == msg.sender , "Cant do it");
        //underline represents "continue"
        _;
    }


    //modifier with params
    modifier justTen(uint amount){
        require(amount == 10, "Cant mint this amount");
        _;
    }



}
