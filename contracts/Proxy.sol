pragma solidity ^0.4.24;

import "./Logic.sol";

contract Proxy {
  Logic public logic;

  // modifiers

  constructor (Logic _logic) public {
    setLogic(_logic);
  }

  function calculate(uint a, uint b) view external returns (uint) {
    return logic.calculate(a, b);
  }

  function upgrade(Logic _logic) external {
    setLogic(_logic);
  }

  function setLogic(Logic _logic) internal {
    logic = _logic;
  }
}
