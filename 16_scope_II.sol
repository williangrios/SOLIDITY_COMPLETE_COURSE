
//Writed by: Willian G Rios, 17/07/2022
pragma solidity 0.8.11;


//private - you can only call the function inside contract

//internal - called only within the contract OR other contracts that INHERIT the smart contract
    //is slightly less restrictive than public

//external - you can only call the function outside the contract not from other functions within

//public - you can call the function from outside the smart contract as well inside the smart contract



contract Visibility {
    constructor ()  {
        
    }

    uint internal internalVariable = 1;
    //uint external externalVariable = 2;
    uint public publicVariable = 3;
    uint private privateVariable = 4;

    function internalFunction() internal pure returns(string memory) {
        return "internal function";
    }

    function externalFunction() external pure returns(string memory){
        return "external function";
    }

    function publicFunction() public pure returns(string memory) {
        return "public function";
    }

    function privateFunction() private pure returns(string memory) {
        return "private function"; 
    }

}

// contract InheritsOther extends Visibility{
//     constructor public {
        
//     }



// }