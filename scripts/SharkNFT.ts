import { ethers } from "hardhat";

async function main() {
  

  const sharkNft = await ethers.deployContract("SharkNFT", [], {
    
  });

  await sharkNft.waitForDeployment();

  console.log(`The shart NFT was deployed at ${sharkNft.target}`)

  
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});


// ipfs://bafkreiami45mm2ig3d43sh3d7jd7n6a7fxw5rueurq4fknjavyhblbfc3u

// 0x37f71e3E5244DD909658CeE5E3AA0516A66EC584