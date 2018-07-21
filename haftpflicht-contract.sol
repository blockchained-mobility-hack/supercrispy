pragma solidity ^0.4.24;
contract haftpflicht {
 /* Define variable owner of the type address*/
 address biker;
 address insuranceCompany;
 string coverageDescription;
 uint maximumAmountOfCoverage;
 uint insurancePeriod;

 /* this function is executed at initialization and sets bikerAdress in the contract */

 constructor(address bikerAdress) public { 
    biker = bikerAdress;
    maximumAmountOfCoverage = 2000;
    coverageDescription = "Bla bla bla";
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