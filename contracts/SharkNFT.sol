// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {ERC721URIStorage} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract SharkNFT is ERC721URIStorage, Ownable {
    constructor() ERC721("SharkNFT", "SHN"){}

    uint public _tokenId;
     function _safeMint(string memory _tokenUri) external {
        uint256 tokenId = _tokenId + 1;
        _safeMint(msg.sender, tokenId);
        _setTokenURI(tokenId, _tokenUri);
    }
    

}
