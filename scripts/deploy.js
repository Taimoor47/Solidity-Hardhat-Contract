
const hre = require("hardhat");

async function main() {


  // We get the contract to deploy
  const Nadra = await ethers.getContractFactory("Nadra");
  console.log("deploying the contract")
  const box = await Nadra.deploy();

  await box.deployed();

  console.log("box deployed to:", box.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
