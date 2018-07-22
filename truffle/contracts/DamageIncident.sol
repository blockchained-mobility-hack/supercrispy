pragma solidity ^0.4.24;
contract DamageIncident {
 /* Define variable of this contracts attributes*/
 address liability;
 uint damageSum = 500;

 /* this function is executed at initialization and sets bikerAdress in the contract */

 constructor() public { 
 }
    function getLiabilityAddress() public constant returns (address) {
    return liability;
 }
    function damageSums() public constant returns (uint) {
    return damageSum;
 }
}
