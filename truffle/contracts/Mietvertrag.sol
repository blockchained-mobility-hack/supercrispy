pragma solidity ^0.4.23;

contract Mietvertrag {
  address  biker;
  address  lordOfBikes;
  uint duration;
  address bike;

  
  constructor() public {
    lordOfBikes = msg.sender;
  }
}