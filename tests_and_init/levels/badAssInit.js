const deployContract = require('../utils/deployContract');
const fs = require('fs');

async function BadAssInit() {
    const sources = {
        'BadAss.sol': {
            content: fs.readFileSync('./contracts/levels/badAss/BadAss.sol', 'utf8'),
        }
    };
    await deployContract(sources, 'BadAss.sol', 'BadAss', '1000000000000000000', ['password']);
}

module.exports = BadAssInit;