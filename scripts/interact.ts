import { ethers } from "hardhat";

async function main() {
  let sharkCA = "0x37f71e3E5244DD909658CeE5E3AA0516A66EC584"
  const tokenURI = "ipfs://bafkreiami45mm2ig3d43sh3d7jd7n6a7fxw5rueurq4fknjavyhblbfc3u"
  const nft2 = "ipfs://bafkreigdvmpibv7guwg2ud5xsnkvj7v33w3aovwdhd6zxtbzvge23kdr3i"

  const sharkNft = await ethers.getContractAt("IsharkNFT", sharkCA);

   await sharkNft._safeMint(tokenURI)

  console.log("sucessfully minted")
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
