//const Box = artifacts.require("Box");
const MyContract = artifacts.require("MyContract");


module.exports = function (deployer) {
  deployer.deploy(MyContract);
};