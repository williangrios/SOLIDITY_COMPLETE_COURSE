//Writed by: Willian G Rios, 20/07/2022
// SPDX-License-Identifier: MIT 
pragma solidity 0.8.7;

//Fallback functions

//Fallback functions will be executed when you try to call a function
//that does not exists, its mostly used to receive direct sending of ether. the
//fallback function will be calledif msg. data is not empty an if there is a receive
//function and message.data is empty then the receive function will be executed

/*
Definition
1 - Cannot have a name (anonymous function)
2 - Does not take any input
3 - Does not return any outputs
4 - Must be declared as external
5 - keyword fallback
6 - payable

Why use it? When you call functions that does not exists - or send 
ether to a contract by send, transfer or call

statement: send and transfer methods receives 2300 gas but call 
method receives more (all of the gas)

*/

/*
fallback or receive will be executed??

    ETH is sent to contract
            |
        is msg.data empty?
            /    \
          yes     no      
          /        \
receive() exists?   fallback()
        /     \
      yes     no
      /         \
    receive()   fallback()
*/

contract FallBack{
    
    event Log(uint gas);
    
    fallback() external payable {
        //payable - send, transfer
        //not recommended to write much code here
        //because the function will fail if it uses too much gas

        //invoke send and transfer methods: we get 2300 gas which is enough to emit a log 
        //invoke call method: we get all the gas

        //special solidity function gasleft returns how much gas is left
        emit Log(gasleft());
        emit Log("Fallback", msg.sender, msg.value, msg.data);
    }

    receive() external payable{
        emit Log("Receiver", msg.sender, msg.value, "");
    }



    function getBalance() public view returns (uint) {
        //return the stored balance of contract
        return address(this).balance;
    }

}



//new contract will send ether to FallBack contract which will trigger fallback function

contract SendToFallBack {

    function transferToFallBack(address payable to) public payable {
        //send ether with the transfer method
        //automatically transfer will transfer 2300 gas amount
        to.transfer(msg.value);
    }

    function callFallBack(address payable to) public payable {
        (bool sent, ) = to.call{value:msg.value}('');
        require(sent, 'Failed to send');
    }

}