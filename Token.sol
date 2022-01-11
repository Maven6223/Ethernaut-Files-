// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
///arithmetic  underflow and overflow challenge. this is why safe math libraries are used
/// uint = uint256 = 2^256 -1 = 1.1579209e+77 ( This is the max number a uint can be without an overflow happening )
/// unit8 = 11111111
contract Token {

  mapping(address => uint) balances;
  uint public totalSupply;

  constructor(uint _initialSupply) public {
    balances[msg.sender] = totalSupply = _initialSupply;
  }

  function transfer(address _to, uint _value) public returns (bool) {
    require(balances[msg.sender] - _value >= 0);
    balances[msg.sender] -= _value;
    balances[_to] += _value;
    return true;
  }

  function balanceOf(address _owner) public view returns (uint balance) {
    return balances[_owner];
  }
}