//Writed by: Willian G Rios, 20/07/2022
// SPDX-License-Identifier: MIT 
pragma solidity 0.8.7;

//https://eth-converter.com/

contract EtherUnits{

    bool public checkOk;

    function setFalse () public {
        checkOk = false;
    }

    function testEth() public {
        assert(1 ether == 1e18); //1 eth = 1^18
        checkOk = true;
    }

    function testWei() public {
        assert(1 ether == 1000000000000000000 wei); //10^18 = 1 eth
        checkOk = true;
    }

    function testGwei() public {
        assert(1 ether == 1000000000 gwei); 
        checkOk = true;
    }

    function testGwei2() public {
        assert(1 ether == 1e9 gwei); 
        checkOk = true;
    }

    function testWei2() public {
        assert(1 wei == 1); 
        checkOk = true;
    }

}
