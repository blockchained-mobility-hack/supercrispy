pragma solidity ^0.4.2;

import "truffle/Assert.sol";
import "../contracts/RentalContract.sol";
import "../contracts/LiabilityContract.sol";
import "../contracts/DamageIncident.sol";

contract Test {

  function testUseCase() public {
    address customer = 0x05fC6126d66346b50856569b507f254Dbd4429f4;
    address insurer = 0x71af8Aa9787D57193A58F1fb94c7143BE553f9C5;
    
    LiabilityContract liability =  new LiabilityContract();
    liability.initContractBetween(customer, insurer);
    assert(liability.getInsuranceCompany() == insurer);
    assert(liability.getBiker() == customer);

    //Customer would like to rent a bike

    address lordOfBikes = 0x34319e23CB9F2BC027F4fBA3CE1E90634AA3001E;

    RentalContract rc = new RentalContract();
    rc.initContractBetween(customer, lordOfBikes, 10, liability);
    assert(rc.getDuration() == 10);

    // something bad happened
    rc.sorryIHadACrash(1000);
  }  
}
