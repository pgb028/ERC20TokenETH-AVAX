## PG TOKEN

PG Token Derives from my first Letters from my first name and my Last Name. So Basically, PG Token program is an implementation of an ERC20 Like Token using Solidity. The Program allows us to mint, Burn, and Transfer a token. 
The Objective of the Token is to demonstrate the concepts of token management in Smart Contracts on the Ethereum Blockchain.

## Description

The PGToken is an ERC20-like token implemented in Solidity, designed to showcase token management concepts on the Ethereum blockchain. It allows users to mint, burn, and transfer tokens through a series of smart contract functions. The token, named "PGToken" with the symbol "PGTK," features basic functions such as minting new tokens, burning existing ones, and transferring tokens between addresses. This contract serves as a foundational example of how digital tokens can be managed in a decentralized environment.

The contract includes essential features such as a mapping to track coin balances for each address, and functions to mint new coins, burn tokens from an account, and transfer tokens between users. The mintCoins function adds newly minted tokens to the recipient's balance and updates the total supply, while the burnCoins function reduces both the supply and the sender's balance. The transferCoins function ensures that tokens can be moved between users, verifying the sender's balance before completing the transaction. Overall, this smart contract demonstrates key token management principles on the Ethereum network.

# Functions/Features

MintCoins() - The mintCoins() function creates new tokens and adds them to a user's balance, increasing the total supply of tokens.
BurnCoins() - The burnCoins() function removes tokens from a user's balance and reduces the total supply. It can only burn tokens if the user has enough.
TransferCoins() - The transferCoins() function moves tokens from one user to another. It checks if the sender has enough tokens and updates both users' balances

## Getting Started

# Here are the steps below in order to run the program
- Access the Remix IDE Website through https://remix.ethereum.org/
- Create a New File: Click on the "+" icon in the left-hand sidebar. Save the file with a .sol extension of your choice (e.g., PGToken).
- Paste the code below:

``` // SPDX-License-Identifier: MIT
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
```

- Click on the "Solidity Compiler" tab in the left-hand sidebar. Ensure the "Compiler" option is set to "0.8.25" (or a compatible version), and then click on the "Compile PGToken.sol" button.
- Deploy the Contract: Click on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "PGToken" contract from the dropdown menu, and then click on the "Deploy" button.
- Interact with the Contract: After deployment, you can interact with the contract by calling the functions mintCoins, burnCoins, and transferCoins to manage the token supply and perform transactions.


## Author

Gabriel, Paul Andre A.
School Email: 201811412@fit.edu.ph
FEU Institute of Technology

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
