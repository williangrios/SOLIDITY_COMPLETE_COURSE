//Writed by: Willian G Rios, 17/07/2022
pragma solidity 0.8.11;

//Arithmetic Operators

contract Calculator{
    constructor () {
        
    }

    uint a = 10;
    uint b = 2;

    function sumAB() public view returns(uint) {
        return a + b;
    }

    function subAB() public view returns(uint) {
        return a - b;
    }

    function divAB() public view returns(uint) {
        return a / b;
    }

    function multAB() public view returns(uint) {
        return a * b;
    }

    function powAB() public view returns(uint) {
        return a ** b;
    }

    
    function quotAB() public view returns(uint) {
        return a % 3;
    }

}