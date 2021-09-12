# ChainMe

## Description

ChaineMe is a project aiming to create a cybersecurity platform with blockchain challenges.

It's going to be only not only for Solidity (Etherum's smart contract language) like most of the others platforms but there is going to be challenges in a wide range of blockchain languages.

Through the challenges, you're going to learn the basics of blockchain's cybersecurity to secure the smart contracts you may have to create.

With this project, we started by learning a lot of general knowledge about P2P / blockchain. Then we learnt how to use IPFS (a distributed system for storing and accessing files, websites, applications, and data), Solidity and the main thing was to solve challenges on platforms like Ethernaut and Damn Vulnerable DEFI. Once this was done, we started by creating the challenges.

## Installation

To install this project, you're going to need [NodeJS](https://nodejs.org/en/) and [NPM](https://www.npmjs.com/get-npm)

You just need to execute the command bellow at the root of the repository:

    npm install

Or you can simply build the docker image with:

    docker image build -t IMAGE_NAME

## Quick Start
To start using the challenges, you need two etherum wallet like metamask (one to host the challenges and one to attack the challenges), then set the environment variables listed bellow in the .env file and you can just launch the project in a docker container with `docker run -it IMAGE_NAME COMMAND` with as usage of the COMMAND:

    npm run [init CHALLENGE] [test CHALLENGE ADDRESS]

    Options:
        init CHALLENGE: init a challenge by its name stored in CHALLENGE variable\n
        test CHALLENGE ADDRESS: test a challenge by its name stored in CHALLENGE variable and from the instance address withen by ADDRESS argument\n

## Features

It has so far four solidity's challenges:
- __[BadAss](contracts/levels/badAss/README.md)__
- __[Op-codes](contracts/levels/op-codes/README.md)__
- __[Op-codes v2](contracts/levels/op-codes_v2/README.md)__
- __[Ultimate](contracts/levels/ultimate/README.md)__

## Environnement

- __`NODE_KEY`__      Define the __Key__ of the Etherum __Node__ used
- __`ETHERSCAN_API_KEY`__      Define the __Api Key__ of __Etherscan__
- __`PRIVATE_KEY`__      Define the __Private key__ of the __Wallet__
- __`PUBLIC_KEY`__      Define the __Public key__ of the __Wallet__

## Dependencies
- __[axios](https://www.npmjs.com/package/axios)__
- __[dotenv](https://www.npmjs.com/package/dotenv)__
- __[solc](https://www.npmjs.com/package/dotenv)__
- __[web3](https://www.npmjs.com/package/web3)__
- __[etherscan](https://etherscan.io/apidocs)__
- __[infuria](https://infura.io/)__

## Authors
 - __[Matéo Viel](https://github.com/mateoviel)__
 - __[Lucas Louis](https://github.com/etarc0s)__