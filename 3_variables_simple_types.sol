// SPDX-License-Identifier: MIT states that others can use your source code with respect to the MIT open-source license


pragma solidity 0.8.7;


contract HelloWorld{
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

    bytes public anyData = "yes";
}