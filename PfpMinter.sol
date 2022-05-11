// SPDX-License-Identifier: MIT
 pragma solidity ^0.8.10;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract MyEpicNFT is ERC721URIStorage {
 using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;

constructor() ERC721 ("ProfileNFT", "Profile") {
    console.log("My PFPNFT contract.");
    }

    function makeAnPFPNFT() public { 
    uint256 newItemId = _tokenIds.current();
    _safeMint(msg.sender, newItemId);
     _setTokenURI(newItemId, "blah");
     _tokenIds.increment();
     }
}


