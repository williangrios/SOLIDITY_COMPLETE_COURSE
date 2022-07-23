//Writed by: Willian G Rios, 20/07/2022

// SPDX-License-Identifier: MIT 
pragma solidity 0.8.7;


contract Events{

    //will be send data to output/log
    event Transfer (address from, address to, uint amount);

    //event Transfer (address indexed from, address to, uint amount);

    function transfer (address to, uint amount) public {
        //verifications
        //transfer code
        //here just emit event
        emit Transfer(msg.sender, to, amount);
    }

}
