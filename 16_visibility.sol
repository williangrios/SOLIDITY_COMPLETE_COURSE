
//Writed by: Willian G Rios, 19/07/2022
pragma solidity 0.8.7;


//private - you can only call the function inside contract

//internal - called only within the contract OR other contracts that INHERIT the smart contract
    //is slightly less restrictive than public

//external - you can only call the function outside the contract not from other functions within

//public - you can call the function from outside the smart contract as well inside the smart contract



contract BaseContract {
    
    constructor ()  {
        
    }

    uint internal internalVariable = 1;
    //state variables cannot be external
    //uint external externalVariable = 2;
    uint public publicVariable = 3;
    uint private privateVariable = 4;

    function internalFunction() internal pure returns(string memory) {
        // can be called
        //inside this contract
        //inside contracts that inherit this contract
        return "internal function";
    }

    function externalFunction() external pure returns(string memory){
        //can be called
        //by others contracts and accounts
        return "external function";
    }

    function publicFunction() public pure returns(string memory) {
        //can be called inside this contract
        //by other contracts and accounts
        //inside contracts that inherits this contract
        return "public function";
    }

    function privateFunction() private pure returns(string memory) {
        //can be called only inside this contract
        //contracts that inherit this contract cannot call this function
        return "private function"; 
    }

}

contract Child is BaseContract {

    //here can't be acecss private and internal state variables
    //can acess public state variables

    //here can be acess public, external and internal functions

    //internal function can be called here in child contract
    function callInternalFunction() public pure {
        internalFunction();
    }

}

