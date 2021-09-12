# Op-codes v2

## Solution :

To validate this challenge, all you have to do is create a contract with less than 10 op-codes that needs to return a number you set. Then you need to call setInterface from GuessTheValue contract with the address of the contract you created. Finally, call guess from the Justin contract with 0.01 eth as value and a number equal to the one you return in the interface.