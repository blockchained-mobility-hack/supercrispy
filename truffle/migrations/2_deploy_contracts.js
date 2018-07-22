var Mietvertrag = artifacts.require("./Mietvertrag.sol");


module.exports = function (deployer) {
  deployer.deploy(Mietvertrag);
}; 