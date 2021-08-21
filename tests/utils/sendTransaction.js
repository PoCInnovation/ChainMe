const web3 = require('./connection');

async function sendTransaction(to, value, gas) {
    const transaction = {
     'to': to,
     'value': value,
     'gas': gas,
    };
    const signedTx = await web3.eth.accounts.signTransaction(transaction, process.env.PRIVATE_KEY);

    await web3.eth.sendSignedTransaction(signedTx.rawTransaction);
}

module.exports = sendTransaction;