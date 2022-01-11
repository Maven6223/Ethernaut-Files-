// SPDX-License-Identifier: MIT
pragma solidity ^0.6.6;

/* Phishing attack using tx.origin */

contract Wallet { 
    address public owner;

    constructor() public {
        owner == msg.sender;
    }

    function deposit() public payable {}

    // // THE BUG IS RIGHT HERE, you must use msg.sender instead of tx.origin
    // By using tx.origin a Attacker can trick the owner into a man in the middle wallet transfer attack
    function transfer(address payable _to, uint _amount) public { 
        require(tx.origin == owner, "Now owner");

        _to.transfer(_amount);
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
}
