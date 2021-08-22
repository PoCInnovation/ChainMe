const solc = require('solc');

function compileContract(sources, fileName, contractName) {
    const input = {
       language: 'Solidity',
       sources: sources,
       settings: {
          outputSelection: {
             '*': {
                '*': ['*'],
             },
          },
       },
    };
    const tempFile = JSON.parse(solc.compile(JSON.stringify(input)));

    return tempFile.contracts[fileName][contractName];
}

module.exports = compileContract;