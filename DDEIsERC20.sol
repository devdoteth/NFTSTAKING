// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DDEIsERC20 is ERC20, Ownable {
    mapping(address => bool) admins;

    constructor() ERC20("DDE", "DDE") {}

    function mint(address _to, uint256 _amount) external {
        require(admins[msg.sender], "Cannot mint if not admin");
        _mint(_to, _amount);
    }

    function addAdmin(address _admin) external onlyOwner {
        admins[_admin] = true;
    }

    function removeAdmin(address _admin) external onlyOwner {
        admins[_admin] = false;
    }
}
