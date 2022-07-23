//Writed by: Willian G Rios, 16/07/2022

// SPDX-License-Identifier: MIT states that others can use your source code with respect to the MIT open-source license
pragma solidity 0.8.7;

contract Structs{

    struct User {
        uint id;
        string name;
        address walletAddress;
    }

    //array of users/struct
    User[] usersList;

    
    function addUser(string memory newName) public {
        //implicit
        //usersList.push(User(usersList.length, newName, msg.sender));
        
        // key value mapping
        //explicit
        //usersList.push(User({id: usersList.length, name: newName, walletAddress: msg.sender}));
        
        User memory newUser;
        newUser.id = usersList.length;
        newUser.name = newName;
        newUser.walletAddress = msg.sender;
        usersList.push(newUser);
    }

    function removeLastUser() public {
        usersList.pop();
    }

    function usersLenght() public view returns (uint){
        return usersList.length;
    }

    function returnUser(uint index) public view returns (User memory){
        return usersList[index];
    }

}