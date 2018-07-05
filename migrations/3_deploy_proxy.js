var Proxy = artifacts.require("./Proxy.sol");
var Logic = artifacts.require("./Logic.sol");

module.exports = function(deployer) {
  deployer.deploy(Proxy, Logic.address);
};
