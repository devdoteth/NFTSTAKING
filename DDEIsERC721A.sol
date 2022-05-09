// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import "./ERC721A.sol";
import "./ERC721AQueryable.sol";

contract DDEIsERC721A is ERC721A, ERC721AQueryable {
    constructor() ERC721A("DDE NFT", "DDENFT") {}

    function mint(uint256 quantity) external payable {
        _safeMint(msg.sender, quantity);
    }
}
