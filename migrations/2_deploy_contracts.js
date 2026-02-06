var ShkToken = artifacts.require("./ShkToken.sol");
var ShkTokenSale = artifacts.require("./ShkTokenSale.sol");

module.exports = function(deployer) {
  deployer.deploy(ShkToken , 1000000).then(function() {
    // Token price is 0.001 Ether
    var tokenPrice = 1000000000000000;
    return deployer.deploy(ShkTokenSale, ShkToken.address, tokenPrice);
  });
};