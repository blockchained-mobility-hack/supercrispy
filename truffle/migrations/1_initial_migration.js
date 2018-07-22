var Migrations = artifacts.require("./Migrations.sol");
var Haftpflicht = artifacts.require("./Haftpflicht.sol");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(Haftpflicht, 0xa3a6fbaa88d14d6c936dc1dbce8d745f932b461e);
};
