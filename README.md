# Lottery-project
Project Name: Simple Lottery Contract

Description

This Solidity smart contract implements a basic lottery system on the Ethereum blockchain. Players can participate by sending 1 Ether to the contract, and a winner is randomly selected using a pseudo-random number generation technique.

Key Features

Player Participation: Players can enter the lottery by calling the participate function with 1 Ether.
Winner Selection: A random winner is chosen using the random function, which leverages a combination of block difficulty, timestamp, and player count.
Manager Control: Only the deployer (manager) can check the contract's balance using the getBalance function. This function enforces access control using a require statement.
