//Writed by: Willian G Rios, 19/07/2022
//SPDX-License-Identifier: MIT states that others can use your source code with respect to the MIT open-source license
pragma solidity 0.8.7;


contract Loops{

    //Solidity supports for, while, and do while loops.

    address[] private someAddresses;

    function fillAddresses() private {
        someAddresses.push(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        someAddresses.push(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
        someAddresses.push(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
        //someAddresses.push(0x0000000000000000000000000000000000000000);
        someAddresses.push(0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB);
    }

    function thereAreNullAddressLoopFor() public returns (bool) {

        fillAddresses();

        bool hasNullAddress = false;

        for (uint i = 0; i < someAddresses.length; i++){
            if (someAddresses[i] == 0x0000000000000000000000000000000000000000){
                hasNullAddress = true;
            }
        }

        return hasNullAddress;

    }

    function thereAreNullAddressLoopWhile() public returns (bool) {

        fillAddresses();
        uint i = 0;
        bool hasNullAddress = false;
        while (i < someAddresses.length ){
            if (someAddresses[i] == 0x0000000000000000000000000000000000000000){
                hasNullAddress = true;
            }
            i++;
        }
        return hasNullAddress;
    }

}