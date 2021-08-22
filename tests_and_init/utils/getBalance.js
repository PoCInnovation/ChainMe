const web3 = require('./connection');

async function getBalance(address) {
    let balanceAmount = await web3.eth.getBalance(address);

    return balanceAmount;
}

module.exports = getBalance;