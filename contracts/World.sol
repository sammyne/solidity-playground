pragma solidity ^0.5.6;

import "./Hello.sol";

contract World {
  Hello hello;  

  constructor(Hello _hello) public {
    hello = _hello;
  }

  function sayHi() public {
    hello.Greet();
  }
}