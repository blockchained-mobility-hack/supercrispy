pragma solidity ^0.4.2;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Mietvertrag.sol";

contract Test {

  function testMietvertrag() public {
    address mv = new Mietvertrag();

    
  }

  
}
