// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract PGToken {
    string public name = "PGToken"; //Token Name
    string public symbol = "PGTK"; // Token Symbol
    uint public supply = 0;

    // Mapping to Track Balances
    mapping (address => uint) public coinBalances; 

    // Mint Function
    function mintCoins(address to, uint amount) public {
        supply += amount; 
        coinBalances[to] += amount;
    }

    //Burn Function
    function burnCoins(address from, uint amount) public {
        require(coinBalances[from] >= amount, "Balance is not enough to burn.");
        supply -= amount;
        coinBalances[from] -= amount;
    }

    // Transfer Function
    function transferCoins(address from, address recipient, uint amount) public {
        require(coinBalances[from] >= amount, "Insufficient Amount. Cannot proceed to transfer coins.");
        coinBalances[from] -= amount;
        coinBalances[recipient] += amount;
        supply -= amount;
    }
}