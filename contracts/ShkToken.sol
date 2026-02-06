// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.4.26;

contract ShkToken {
    string public name = "Shk Token";
    uint public totalSupply;

    constructor() {
        totalSupply = 1000000; // Initial supply of tokens
    }

}