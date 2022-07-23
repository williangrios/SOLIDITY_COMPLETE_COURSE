//Writed by: Willian G Rios, 16/07/2022

// SPDX-License-Identifier: MIT states that others can use your source code with respect to the MIT open-source license
pragma solidity 0.8.7;

contract Enums{

    enum RoleUser 
    {
        ADMIN, 
        TEACHER,
        INSTRUCTOR, 
        CLIENT
    }

//        ADMIN, //returns 0
//        TEACHER, //returns 1
//        INSTRUCTOR,  //returns 2
//        CLIENT    //returns 3

    mapping(address => RoleUser) users;

    function addUser(RoleUser newRole) external {
        users[msg.sender] = newRole;
    }

    function getRole() external view returns(RoleUser){
        return users[msg.sender];
    }

    function updateRole(RoleUser newRoleUser) external {
        users[msg.sender] = newRoleUser;
    }

    function resetRole() external {
        delete users[msg.sender];
    }

}

