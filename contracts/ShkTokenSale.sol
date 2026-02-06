pragma solidity ^0.4.26;
import "./ShkToken.sol";

contract ShkTokenSale {
    address public admin;
    ShkToken public tokenContract;
    uint256 public tokenPrice;

    function ShkTokenSale(ShkToken _tokenContract , uint256 _tokenPrice) public {
        admin = msg.sender;
        tokenContract = _tokenContract;
        tokenPrice = _tokenPrice; // Price of each token in wei (0.001 Ether)
    }
}