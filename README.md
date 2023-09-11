# SharkNFT Smart Contract

The SharkNFT is a Solidity smart contract that implements a non-fungible token (NFT) on the Ethereum blockchain. This contract is designed to represent unique digital assets, specifically Shark-themed NFTs. Below is an overview of the contract and its functionality.
Overview

    Name: SharkNFT
    Symbol: SHN
    Inherits: ERC721URIStorage (from OpenZeppelin's contracts), Ownable

The contract is written in Solidity version 0.8.19 and utilizes OpenZeppelin libraries for ERC721 functionality and access control through the Ownable contract.
Contract Features
Constructor

    The constructor initializes the ERC721 token with the name "SharkNFT" and the symbol "SHN."

solidity

constructor() ERC721("SharkNFT", "SHN"){}

_tokenId

    This contract includes a public variable _tokenId which keeps track of the latest token ID issued. It starts at 0.

_safeMint Function

    The _safeMint function allows the owner of the contract to create new SharkNFTs by minting them. It takes a single parameter _tokenUri, which represents the URI (Uniform Resource Identifier) for the metadata associated with the NFT.

``` solidity

function _safeMint(string memory _tokenUri) external {
    uint256 tokenId = _tokenId + 1;
    _safeMint(msg.sender, tokenId);
    _setTokenURI(tokenId, _tokenUri);
}
````
    Inside the function, it increments the _tokenId counter, mints a new NFT with the given _tokenUri to the sender's address, and associates the metadata URI with the newly minted NFT.


```
