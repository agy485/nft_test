// @openzeppelin v3.2.0
pragma solidity ^0.8.0;
import "../node_modules/@openzeppelin/contracts/token/ERC1155/presets/ERC1155PresetMinterPauser.sol";
contract MyContract is ERC1155PresetMinterPauser {
    constructor() public
    ERC1155PresetMinterPauser("")  
    {}
    
    // This allows the minter to update the tokenURI after it's been minted.
    function setTokenURI(uint256 tokenId, string memory tokenURI) public {
        require(hasRole(MINTER_ROLE, _msgSender()), "web3 CLI: must have minter role to update tokenURI");
        setTokenURI(tokenId, tokenURI);
    }
}