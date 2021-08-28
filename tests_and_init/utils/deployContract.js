const web3 = require('../utils/connection');
const compileContract = require('../utils/compileContract');
const sendTransaction = require('../utils/sendTransaction');

async function deployContract(sources, fileName, contractName, value, args) {
    let contractFile = compileContract(sources, fileName, contractName);
    const bytecode = contractFile.evm.bytecode.object;
    const abi = contractFile.abi;

    console.log('Attempting to deploy contract:', contractName, 'from account:', process.env.ADDRESS);
    const incrementer = new web3.eth.Contract(abi);
    const incrementerTx = incrementer.deploy({ data: bytecode, arguments: args });
    let createReceipt = await sendTransaction(null, value, '3000000', incrementerTx.encodeABI());
    console.log('Contract deployed at address', createReceipt.contractAddress);
	console.log('');
    return createReceipt.contractAddress;
}

module.exports = deployContract;