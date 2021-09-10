# Op-codes

## Exploit approached :

The main purpose of this challenge is to discover how op-codes works for etherum and how you can use them.

## Goal :

This is a gambling contract where you can MULTIPLY YOUR BET BY 100X, quite amazing right ? Of course there is a trick.
To validate this challenge, you must empty the Wallet contract by taking the whole etherum from it.

## Solution :

To validate this challenge, all you have to do is create a contract with less than 10 op-codes that needs to return a number you set. Then you need to call setInterface from GuessTheValue contract with the address of the contract you created. Finally, call guess from the Game contract with 0.01 eth as value and a number equal to the one you return in the interface.