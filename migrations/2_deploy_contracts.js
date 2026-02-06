var ShkToken = artifacts.require("./ShkToken.sol");

module.exports = function(deployer) {
  deployer.deploy(ShkToken);
};