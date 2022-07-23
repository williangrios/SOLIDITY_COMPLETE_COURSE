//Writed by: Willian G Rios, 19/07/2022

// SPDX-License-Identifier: MIT 
pragma solidity 0.8.7;


contract Errors{

    // require is used to validate inputs and conditions before execution (inputs, conditions before execution, return values from calls to other functions).
    // revert is similar to require. usefull when the condition to check is complex.
    // assert is used to check for code that should never be false. Failing assertion probably means that there is a bug.

    bool canAccess = true;
    function testingRequire() public view{
        require (canAccess, "You cant access");
        
        //other codes will be running if canAcces == true
    }

    function testingRevert() public view{
        if (!canAccess) {
            revert("You Cant access"); 
        }
        //other codes will be running if canAccess = true
    }
    
    
uint public num = 0;

    function testAssert() public  {
        // Assert should only be used to test for internal errors,
        // and to check invariants.

        // Here we assert that num is always equal to 0
        // since it is impossible to update the value of num
        assert(num == 0);

        //if num == 0 code below runs

        num +=1;

    }

    // custom error
    error InsufficientBalance(uint balance, uint withdrawAmount);

    function testCustomError(uint _withdrawAmount) public view {
        uint bal = address(this).balance;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({balance: bal, withdrawAmount: _withdrawAmount});
        }
    }

}