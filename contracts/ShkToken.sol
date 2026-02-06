// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.4.26;

contract ShkToken {
    string public name = "Shk Token";
    string public symbol = "Shk";
    string public standard = "Shk Token v1.0";
    uint public totalSupply;

    event Transfer(
        address indexed _from, 
        address indexed _to, 
        uint256 _value
    );

    mapping(address => uint256) public balanceOf;

    constructor(uint256 _initialSupply) public {
        balanceOf[msg.sender] = _initialSupply; // Assign all tokens to the contract deployer
        totalSupply = _initialSupply; // Initial supply of tokens
    }


    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");
        balanceOf[msg.sender] -= _value; // Subtract from sender's balance
        balanceOf[_to] += _value; // Add to recipient's balance
        
        Transfer(msg.sender, _to , _value);
        return true;
    }

}