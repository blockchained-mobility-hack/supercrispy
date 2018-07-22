pragma solidity ^0.4.2;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Mietvertrag.sol";
import "../contracts/Haftpflicht.sol";
import "../contracts/SchadenIncident.sol";

contract Test {

  function testUseCase() public {
    address customer = 0x05fC6126d66346b50856569b507f254Dbd4429f4;
    address insurer = 0x71af8Aa9787D57193A58F1fb94c7143BE553f9C5;
    
    Haftpflicht haft =  new Haftpflicht();
    haft.initContractBetween(customer, insurer);
    assert(haft.getInsuranceCompany() == insurer);
    assert(haft.getBiker() == customer);

    //Customer would like to rent a bike

    address lordOfBikes = 0x34319e23CB9F2BC027F4fBA3CE1E90634AA3001E;

    Mietvertrag mv = new Mietvertrag();
    mv.initContractBetween(customer, lordOfBikes, 10);


  }  
}
