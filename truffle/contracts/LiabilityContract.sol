pragma solidity ^0.4.24;
contract LiabilityContract {
 /* Define variable owner of the type address*/
 address biker;
 address insuranceCompany;
 string coverageDescription;
 uint maximumAmountOfCoverage;
 uint insurancePeriod;

 /* this function is executed at initialization and sets bikerAdress in the contract */

 constructor() public { 
   
  }
 
 function initContractBetween(address c, address i) public {
    biker = c;
    insuranceCompany = i; 
    maximumAmountOfCoverage = 3000;
    coverageDescription = "The insurance pays for damages on small rented bikes.";
    insurancePeriod = 6;
 }
 
   function getBiker() public constant returns (address) {
    return biker;
 }
   function getCoverageDescription() public constant returns (string) {
    return coverageDescription;
 }
   function getInsuranceCompany() public constant returns (address) {
    return insuranceCompany;
 }
  function getMaximumAmountOfCoverage() public constant returns (uint) {
    return maximumAmountOfCoverage;
 }
   function getInsurancePeriod() public constant returns (uint) {
    return insurancePeriod;
 }
}