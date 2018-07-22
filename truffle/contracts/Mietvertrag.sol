pragma solidity ^0.4.23;

contract Mietvertrag {
  address  biker;
  address  lordOfBikes;
  uint duration;


  
  constructor() public {
  }

  function initContractBetween(address _biker, address _lordOfBikes, uint _duration) public {
    biker = _biker;
    lordOfBikes = _lordOfBikes;
    duration = _duration;
  }

}
