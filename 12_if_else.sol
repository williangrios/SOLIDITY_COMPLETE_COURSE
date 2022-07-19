//Writed by: Willian G Rios, 19/07/2022
//SPDX-License-Identifier: MIT states that others can use your source code with respect to the MIT open-source license
pragma solidity 0.8.7;

contract MakingDecisions{

    //Solidity supports conditional statements if, else if and else.

    uint tokensInStaking = 2;

    function receiveAirdrop() private view returns (bool){
        if(tokensInStaking >= 10){
            return true;
        }else {
            return false;
        }
    }

    function tokensToReceive() public view returns (uint){
        
        if (receiveAirdrop()){
            if (tokensInStaking >= 1000){
                return 100;
            } else if (tokensInStaking >= 100) {
                return 10;
            } else {
                return 1;
            }
        } else {
            return 0;
        }

    }

}