var ShkToken = artifacts.require("ShkToken");
var ShkTokenSale = artifacts.require("ShkTokenSale");

module.exports = async function(deployer, network, accounts) {
  // Deploy token with 1,000,000 supply
  await deployer.deploy(ShkToken, 1000000);
  const token = await ShkToken.deployed();

  // Token price = 0.001 ETH
  const tokenPrice = web3.utils.toWei("0.001", "ether");

  // Deploy token sale
  await deployer.deploy(ShkTokenSale, token.address, tokenPrice);
  const sale = await ShkTokenSale.deployed();

  // 🔥 MOST IMPORTANT LINE 🔥
  // Transfer tokens from admin → sale contract
  await token.transfer(sale.address, 750000);
};
