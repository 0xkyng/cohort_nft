// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {ERC721URIStorage} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract SharkNFT is ERC721URIStorage, Ownable {
    constructor() ERC721("SharkNFT", "SHN"){}

    function mint(
        address _to,
        uint _tokenId,
        string calldata _uri
    ) external onlyOwner {
        _mint(_to, _tokenId);
        _setTokenURI(_tokenId, _uri);
    }
}
