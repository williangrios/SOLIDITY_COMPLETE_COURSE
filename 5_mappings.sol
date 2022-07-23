//Writed by: Willian G Rios, 16/07/2022

// SPDX-License-Identifier: MIT states that others can use your source code with respect to the MIT open-source license
pragma solidity 0.8.7;

contract Mappings{

    //like a dictionary
    //sintax mapping(keyType => valueType)
    //keyType can be any type, including mapping or an array
    mapping(address => uint) balances;

    function deposit() external payable {
        balances[msg.sender] = msg.value;
    }
    
    function balanceOf() external view returns (uint){
        return balances[msg.sender];
    }

    function removeMyBalance() public {
        // Reset the value to the default value.
        delete balances[msg.sender];
    }

}


//another example
contract MappingsPoints{

    mapping(address => uint[]) points;

    function addPoints (uint task_points) external {
        points[msg.sender].push(task_points);
    }

    function sumPoints () external view returns (uint) {
        uint total =0;
        for (uint i = 0; i < points[msg.sender].length ; i++ ) {
            total += points[msg.sender][i];
        }
        return total;
    }

}