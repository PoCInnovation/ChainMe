require('dotenv').config();

const Web3 = require("web3")
const testnet = process.env.API_KEY;

const web3 = new Web3(new Web3.providers.HttpProvider(testnet));

module.exports = web3;