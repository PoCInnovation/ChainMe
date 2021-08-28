const getBalance = require('../utils/getBalance');
const axios = require('axios');

async function getWalletAddress(instanceAddress) {
    const response = await axios.get('https://api-rinkeby.etherscan.io/api?module=account&action=txlistinternal&address=' + instanceAddress + '&startblock=0&endblock=99999999&sort=asc&apikey=' + process.env.ETHERSCAN_API_KEY);

    for (let data of response.data.result) {
        if (data.value == 1000000000000000000) {
            return data.to;
        }
    }
}

async function opcodesTest(instanceAddress) {
    const walletAddress = await getWalletAddress(instanceAddress);
    const etherumAmount = await getBalance(walletAddress);

    if (etherumAmount == 0) {
        console.log("Op-codes challenge solved!!!");
    } else {
        console.log("Op-codes challenge not solved!!!");
    }
}

module.exports = opcodesTest;