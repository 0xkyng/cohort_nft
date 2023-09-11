// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface IsharkNFT{
     function _mint(address to, uint256 tokenId) external;
     function _safeMint(string memory _tokenUri) external;
     function mint(address _to, uint _tokenId, string calldata _uri) external;
}