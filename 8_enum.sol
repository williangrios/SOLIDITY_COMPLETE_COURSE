//Writed by: Willian G Rios, 16/07/2022

// SPDX-License-Identifier: MIT states that others can use your source code with respect to the MIT open-source license
pragma solidity 0.8.7;

contract HelloWorld{

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

    RoleUser roleUserActive;

    function getRole() public view returns(RoleUser){
        return roleUserActive;
    }

    function setRole(RoleUser roleUser) public {
        roleUserActive = roleUser;
    }

    function resetRole() public {
        delete roleUserActive;
    }

}

