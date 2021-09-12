# Ultimate

## Gumpy

### Solution

To validate this challenge, it's necessary to give a quantity of water to "Gumpy" equal to the limit that it can receive, however this limit can't be reached with an addition of positive unit.
So to validate this challenge, you have to give a certain number of negative unit in order to create an underflow to be able to reach the value of the maximum quantity of water that can be given to "Gumpy".

## ItSDoneIn2Sec

### Solution

To validate this challenges, there is many possibilities the first one is by making a brut force, so testing many values of gas or calculing the consumption of gas of the contract until the condition of the gas left using the debugging of the contract.

## House

### Solution

To validate this challenge, we need to read the variable containing the amount of ethers to send and read the variable containing the encrypted password. Afterwards it's necessary to find the good password by making a brut force in order to find the equivalent password to the encrypted one.

## Subway

### Solution

To validate this challenge, we need in a first time, to credit our client account and buy a ticket.
After that, we need to add in our contract a call to the function to pass the security in a fallback/ receive function, which allows when we receive some ethers to recall automatically in the same transaction, the sale function.
Once the contract is empty, the challenge is validated.