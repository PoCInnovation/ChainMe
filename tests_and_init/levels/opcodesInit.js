const web3 = require('../utils/connection');
const compileContract = require('../utils/compileContract');
const sendTransaction = require('../utils/sendTransaction');
const fs = require('fs');

async function opcodesInit() {
    const sources = {
        'Justin.sol': {
            content: fs.readFileSync('./contracts/levels/op-codes v2/Justin.sol', 'utf8'),
        },
        'GuessTheValue.sol': {
            content: fs.readFileSync('./contracts/levels/op-codes v2/GuessTheValue.sol', 'utf8'),
        },
        'Modifier.sol': {
            content: fs.readFileSync('./contracts/levels/op-codes v2/Modifier.sol', 'utf8'),
        },
        'Wallet.sol': {
            content: fs.readFileSync('./contracts/levels/op-codes v2/Wallet.sol', 'utf8'),
        }
    };
    let contractFile = compileContract(sources, 'Justin.sol', 'Justin');
    const bytecode = contractFile.evm.bytecode.object;
    const abi = contractFile.abi;
    console.log('Attempting to deploy from account:', process.env.ADDRESS);
    const incrementer = new web3.eth.Contract(abi);
    const incrementerTx = incrementer.deploy({ data: bytecode });
    let createReceipt = await sendTransaction(null, '1000000000000000000', '3000000', incrementerTx.encodeABI());
    console.log('Contract deployed at address', createReceipt.contractAddress);
}

module.exports = opcodesInit;