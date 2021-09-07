const web3 = require('./connection');

async function sendTransaction(to, value, gas, data) {
    const transaction = {
     'from' : process.env.PUBLIC_KEY,
     'to': to,
     'value': value,
     'gas': gas,
     'data' : data
    };
    const signedTx = await web3.eth.accounts.signTransaction(transaction, process.env.PRIVATE_KEY);

    return await web3.eth.sendSignedTransaction(signedTx.rawTransaction);
}

module.exports = sendTransaction;