const deployContract = require('../utils/deployContract');
const fs = require('fs');

async function opcodesV2Init() {
    const sources = {
        'Justin.sol': {
            content: fs.readFileSync('./contracts/levels/op-codes_v2/Justin.sol', 'utf8'),
        },
        'GuessTheValue.sol': {
            content: fs.readFileSync('./contracts/levels/op-codes_v2/GuessTheValue.sol', 'utf8'),
        },
        'Modifier.sol': {
            content: fs.readFileSync('./contracts/levels/op-codes_v2/Modifier.sol', 'utf8'),
        },
        'Wallet.sol': {
            content: fs.readFileSync('./contracts/levels/op-codes_v2/Wallet.sol', 'utf8'),
        }
    };
    await deployContract(sources, 'Justin.sol', 'Justin', '1000000000000000000', null);
}

module.exports = opcodesV2Init;