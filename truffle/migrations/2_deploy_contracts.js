var RentalContract = artifacts.require("./RentalContract.sol");
var LiabilityContract = artifacts.require("./LiabilityContract.sol");
var DamageIncident = artifacts.require("./DamageIncident.sol");


module.exports = function (deployer) {
  deployer.deploy(RentalContract);
  deployer.deploy(LiabilityContract);
  deployer.deploy(DamageIncident);
}; 