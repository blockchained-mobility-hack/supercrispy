pragma solidity ^0.4.24;
contract schadenincident {
 /* Define variable of this contracts attributes*/
 address liability;
 uint damageSum;

 /* this function is executed at initialization and sets bikerAdress in the contract */

 constructor(address liabilityAddress) public { 
    liability = liabilityAddress;
    damageSum = 500;
 }
    function getLiabilityAddress() public constant returns (address) {
    return liability;
 }
    function damageSums() public constant returns (uint) {
    return damageSum;
 }
}
