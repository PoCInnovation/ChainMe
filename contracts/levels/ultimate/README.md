# Ultimate

## Préambule / preamble :

Le dernier challenge nommé "Ultimate" est un challenge regroupant plusieurs sous challenges. Pour valider ce challenge, il est nécessaire de valider dans un certain ordre les sous challenges.

Le but de ce challenge est de faire un résumé des différentes failles abordées lors de ce projet et utilisant des scénarios mettant en scène ces failles.

---

The last challenge called "Ultimate" is a challenge composed by several sub-challenge. To validate this challenge, it's necessary to validate the sub-challenge in a specific way.

The goal of this challenge is to summarize all the different exploit approached during this project and using scenariow featuring these exploits.

## Gumpy

### Faille abordé / Exploit approached :

Le premier sous challenge se nomme "Gumpy" et utilise la faille de l'underflow.

---

The first sub challenge named "Gumpy" is a challenge using the underflow exploit.

### But / Goal :

Un personnage "Gumpy" veut boire de l'eau pour cela l'utilisateur va devoir lui forunir de l'eau.
Cependant, il ne peut lui donner seulement 20 unités d'eau à la fois et est limité à une certaine quantité d'eau au total.

---

A character named "Gumpy" want some water for that the user will have to provide him water.
However he can't give him only 20 unit of water at the same time and he is limited to a certain amount of water in total.

### Solution

Pour valider ce challenge il est nécessaire de donner une quantité d'eau à "Gumpy" égale à la limite qu'il peut recevoir, cependant cette limite ne peut pas être atteinte avec un ajout d'unité positive.
Donc pour valider ce challenge, il faut donner un certain nombre d'unité négative d'eau de sorte à créer un underflow pour pouvoir atteindre la valeur de la quantité maximale d'eau que l'on peut donner à "Gumpy".

---

To validate this challenge, it's necessary to give a quantity of water to "Gumpy" equal to the limit that it can receive, however this limit can't be reached with an addition of positive unit.
So to validate this challenge, you have to give a certain number of negative unit in order to create an underflow to be able to reach the value of the maximum quantity of water that can be given to "Gumpy".

## ItSDoneIn2Sec

### Faille abordé / Exploit approached :

Le deuxième sous challenge se nomme "ItSDoneIn2Sec" et utilise cette fois-ci non pas une faille mais un principe de ce langage, le gas.

---

The second sub challenge called "ItSDoneIn2Sec" is a challenge using a principle of this language, the gas.

### But / Goal :

Le but de ce challenge est de trouver le bon nombre de gas à envoyer lors de la transaction de sorte à que le gas restant modulo 984 soit égal à 0. Si c'est le cas, alors le challenge est validé, dans le cas contraire il ne l'est pas.

---

The goal of this challenge is to find the good amount of gas to send during the transaction so that the remaining gas modulo 984 be equal to 0. If it's the case, so the challenge is validated, in the other case it's not.

### Solution

Pour valider ce challenge plusieurs façons sont possibles, la première en faisant un brut force, donc en testant plusieurs valeurs de gas ou sinon en calculant la consommation de gas du contrat jusqu'à la condition du gas restant en utilisant le débogage du contrat.

---

To validate this challenges, there is many possibilities the first one is by making a brut force, so testing many values of gas or calculing the consumption of gas of the contract until the condition of the gas left using the debugging of the contract.

## House

### Faille abordé / Exploit approached :

Le troisième challenge se nomme "House" et utilise la faille de lecture des variables "storage".

---

The third challenge called "House" is a challenge using the exploit of reading the storages variables.

### But / Goal :

Le but de ce challenge est de déverouiller la porte d'entrée de la maison, pour cela il faut trouver le bon nombre d'ethers à envoyer et le mot de passe.

---

The goal of this challenge is to unlock the front door of the house, to do that we need to find the good amount of ethers to send et the password.

### Solution

Donc pour valider ce challenge il faut lire la variable contentant le nombre d'ethers à envoyer ainsi que lire la variable contenant le mot de passe crypter. Par la suite il est nécessaire de trouver le mot de passe en faisant un brut force dans le but de trouver le mot de passe équivalant à celui crypté.

---

To validate this challenge, we need to read the variable containing the amount of ethers to send and read the variable containing the encrypted password. Afterwards it's necessary to find the good password by making a brut force in order to find the equivalent password to the encrypted one.

## Subway

### Faille abordé / Exploit approached :

Le quatrième challenge se nomme "Subway" et utilise la faille du re-entrancy.
Pour passer la sécurité du métro un ticket est nécessaire et pour en acheter un, il faut créditer son compte client.
À chaque passage de la sécurité un certain pourcentage du prix du ticket est remboursé directement au client.

---

Le fourth challenge called "Subway" is a challenge using the re-entrancy exploit.
To pass the security of the subway, a subway ticket is mandatory, to buy one you need to credit your client account.
For each security passgae some of the price of the ticket is refund directly to the customer.

### But / Goal :

Notre but dans ce challenge est de vider tous les ethers que contient le contrat.

---

The goal of this challenge is to empty all of the ethers of the contract.

### Solution

Donc pour le valider il faut dans un premier temps, créditer son compte client puis acheter un ticket.
Ensuite il faut intégrer dans son contrat un appel à la fonction pour passer la sécurité dans une fallback/ receive fonction, ce qui permet lorsqu'on reçoit des ethers de rappeler automatiquement dans la même transaction, la même fonction.
Une fois que le contrat n'a plus d'ethers, le challenge est validé.

---

To validate this challenge, we need in a first time, to credit our client account and buy a ticket.
After that, we need to add in our contract a call to the function to pass the security in a fallback/ receive function, which allows when we receive some ethers to recall automatically in the same transaction, the sale function.
Once the contract is empty, the challenge is validated.

## Final

Une fois que les quatre challenges sont validés dans un certain ordre qu’on ne peut pas connaître, le challenge principal est lui aussi validé.

---

Once the four challenge are validated in a specific order that we can'n know, the main challenge is validated too.
