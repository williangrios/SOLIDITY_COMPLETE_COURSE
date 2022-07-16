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
    string public firstName = 'will';
    string public othersData ;

    //uint can be only > 0
    //unsigned int
    uint public age = 37;

    //int can be only > or < 0
    int public balance = -19;

    //boolean
    bool public canAccess = false;

}