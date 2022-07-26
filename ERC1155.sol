// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract GameItems is ERC1155 {
    uint256 public constant myToken = 0;

    constructor() ERC1155("https://game.example/api/item/{id}.json") {
        _mint(msg.sender, myToken, 10**18, "");
    }
}
