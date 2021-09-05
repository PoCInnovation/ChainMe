const deployContract = require('../utils/deployContract');
const fs = require('fs');

async function opcodesInit() {
    const sources = {
        'Gamble.sol': {
            content: fs.readFileSync('./contracts/levels/op-codes/Gamble.sol', 'utf8'),
        },
        'GuessTheValue.sol': {
            content: fs.readFileSync('./contracts/levels/op-codes/GuessTheValue.sol', 'utf8'),
        },
        'Wallet.sol': {
            content: fs.readFileSync('./contracts/levels/op-codes/Wallet.sol', 'utf8'),
        }
    };
    await deployContract(sources, 'Gamble.sol', 'Gamble', '1000000000000000000', null);
}

module.exports = opcodesInit;