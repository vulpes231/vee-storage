const hre = require("hardhat");

async function main() {
  const contractFactory = await hre.ethers.getContractFactory("VeeStorage");
  console.log("deploying contract...");
  const veeStorage = await contractFactory.deploy();
  await veeStorage.deployed();
  console.log("done");
}

main()
  .then(() => process.exit(0))
  .catch((err) => {
    console.log(err);
    process.exit(1);
  });
