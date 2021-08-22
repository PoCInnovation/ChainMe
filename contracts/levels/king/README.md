# BadAss

## Faille abordé / Exploit approached :

Le premier challenge nommé "BadAdd" est un challenge utilisant la faille du revert dans une receive function. Ce challenge est inspiré du challenge "King" sur Ethernaut et de la mécanique du jeu "King of the Ether".

---

The first challenge named "BadAss" is a challenge using the revert exploit in a receive function. This challenge is inspired by the "King" challenge on Ethernaut and the "King of the Ether" game mechanics.

## But / Goal :

Le BadAss est la personne qui a trouvé le bon mot de passe et le bon nombre d'ether à envoyer. Au début du challenge le BadAss est la personne ayant déployée le contrat.
Pour valider le challenge il faut que le BadAss ne soit pas l’owner, cependant une mécanique supplémentaire est ajoutée, celle du reclaim. Le reclaim est caractérisé par la re-validation du challenge par l’owner.

---

The BadAss is the person who found the good password and the good amount of ether to send. A the start of the challenge, the BadAss is the person who deployed the contract.
To validate this challenge, the BadAss musn't be the owner, however an additional mechanic is added, the reclaim mechanics. The reclaim is done by the owner

## Solution
Pour valider ce challenge, il suffit de trouver le mot de passe qui est crypté avec la procédure keccak256 ainsi que de trouver le bon nombre d’ether à envoyer et enfin mettre en place un système de revert pour que l’owner ne puisse pas reclaim le challenge.

---

To validate this challenge, all you have to do is find the password which is encrypted with the keccak256 procedure and find the good amount of ther to send and finally set up a revert system so that the owner can't reclaim the challenge.
