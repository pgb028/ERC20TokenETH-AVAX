## PG TOKEN

PG Token Derives from my first Letters from my first name and my Last Name. So Basically, PG Token program is an implementation of an ERC20 Like Token using Solidity. The Program allows us to mint, Burn, and Transfer a token. 
The Objective of the Token is to demonstrate the concepts of token management in Smart Contracts on the Ethereum Blockchain.

## Description

The PGToken is an ERC20-like token implemented in Solidity, designed to showcase token management concepts on the Ethereum blockchain. It allows users to mint, burn, and transfer tokens through a series of smart contract functions. The token, named "PGToken" with the symbol "PGTK," features basic functions such as minting new tokens, burning existing ones, and transferring tokens between addresses. This contract serves as a foundational example of how digital tokens can be managed in a decentralized environment.

The contract includes essential features such as a mapping to track coin balances for each address, and functions to mint new coins, burn tokens from an account, and transfer tokens between users. The mintCoins function adds newly minted tokens to the recipient's balance and updates the total supply, while the burnCoins function reduces both the supply and the sender's balance. The transferCoins function ensures that tokens can be moved between users, verifying the sender's balance before completing the transaction. Overall, this smart contract demonstrates key token management principles on the Ethereum network.
