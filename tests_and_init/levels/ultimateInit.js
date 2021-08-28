const deployContract = require('../utils/deployContract');
const fs = require('fs');

async function ultimateInit() {
    const sources = {
        'Ultimate.sol': {
            content: fs.readFileSync('./contracts/levels/ultimate/Ultimate.sol', 'utf8'),
        },
		'Gumpy.sol': {
            content: fs.readFileSync('./contracts/levels/ultimate/Gumpy.sol', 'utf8'),
        },
		'House.sol': {
            content: fs.readFileSync('./contracts/levels/ultimate/House.sol', 'utf8'),
        },
		'ItSDoneIn2Sec.sol': {
            content: fs.readFileSync('./contracts/levels/ultimate/ItSDoneIn2Sec.sol', 'utf8'),
        },
		'Subway.sol': {
            content: fs.readFileSync('./contracts/levels/ultimate/Subway.sol', 'utf8'),
        }
    };
    await deployContract(sources, 'Ultimate.sol', 'Ultimate', '', null);
}

module.exports = ultimateInit;