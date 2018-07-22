var Mietvertrag = artifacts.require("./Mietvertrag.sol");
var Haftpflicht = artifacts.require("./Haftpflicht.sol");
var SchadenIncident = artifacts.require("./SchadenIncident.sol");


module.exports = function (deployer) {
  deployer.deploy(Mietvertrag);
  deployer.deploy(Haftpflicht);
  deployer.deploy(SchadenIncident);
}; 