pragma solidity ^0.4.23;

import "./LiabilityContract.sol";


contract RentalContract {
  address  biker;
  address  lordOfBikes;
  uint duration;
  LiabilityContract liability;
  
  constructor() public {
  }

  function initContractBetween(address _biker, address _lordOfBikes, uint _duration, LiabilityContract _liability) public {
    biker = _biker;
    lordOfBikes = _lordOfBikes;
    duration = _duration;
    liability = _liability;
  }

  function getDuration() public constant returns (uint)  {
    return duration;
  }

  function sorryIHadACrash(uint amount) public {
    liability.pleasePayClaim(amount);
  }
  
  

}
