//Writed by: Willian G Rios, 16/07/2022

// SPDX-License-Identifier: MIT states that others can use your source code with respect to the MIT open-source license
pragma solidity 0.8.7;

contract HelloWorld{

    //three main types of variables

    //booleans (keyword bool) = true, false

    //integers = can be
        //unsigned (keyword uint) = 1, 3452332, 3464532, 234, 6454
        //signed (keyword int) = 1, -3234, 412, -5423345, 23423, -523423

    //strings (keyword string) = "sequences of characters"


    //State variables - variables here (in this place) will be saved in blockchain
    //simple texts
    //default value = ""
    string public firstName = 'will';
    string public othersData ;

    //uint can be only > 0
    //unsigned int
    /*
    uint stands for unsigned integer, meaning non negative integers
    different sizes are available
        uint8   ranges from 0 to 2 ** 8 - 1
        uint16  ranges from 0 to 2 ** 16 - 1
        ...
        uint256 ranges from 0 to 2 ** 256 - 1
    */
    //default value = 0
    uint public age = 37;

    //int can be > or < 0
    /*
    Negative numbers are allowed for int types.
    Like uint, different ranges are available from int8 to int256
    
    int256 ranges from -2 ** 255 to 2 ** 255 - 1
    int128 ranges from -2 ** 127 to 2 ** 127 - 1
    */
    //default value = 0
    int public balance = -19;

    //boolean
    //default value = false
    bool public canAccess = false;

    //bytes32
    //store any data up until 32 bytes, can be strings, uint etc
    //default value = 0x0000000000000000000000000000000000000000000000000000000000000000
    bytes32 public data = "asdçfoljalçsd";

    //address
    //store wallet addresses
    //default value = 0x0000000000000000000000000000000000000000
    address public walletOwner = msg.sender();

}