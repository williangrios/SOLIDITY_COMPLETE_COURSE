//Writed by: Willian G Rios, 19/07/2022

// SPDX-License-Identifier: MIT 
pragma solidity 0.8.7;


contract BuiltIn{

    uint public idChain;
    address public addressMiner;
    uint public dificulty;
    uint public limit;
    uint public blockNumber;
    uint public timeStamp;

    address public caller;
    uint public value;

    address public send;

    constructor () payable public {
        //chain id
        idChain = block.chainid;

        //addres Miner
        addressMiner  = block.coinbase;

        //block miner dificulty
        dificulty = block.difficulty;

        //gas limit
        limit = block.gaslimit;

        //block number
        blockNumber = block.number;

        //time
        timeStamp = block.timestamp;


        //
        caller = msg.sender;

        //value sender to the contract
        value = msg.value;

        //
        send = tx.origin;

        //tx.origin is different from msg.value
        //John => Smart Contract A        => Smart Contract B                   => Smart Contract C
                //tx.origin = John           //tx.origin = John                     //tx.origin = John
                //msg.sender = John          //msg.sender = Smart Cont. A           //msg.sender = Smart Cont. B


    }

    
    
}