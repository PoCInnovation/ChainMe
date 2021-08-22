const getBalance = require('../utils/getBalance');


async function opcodesTest(instanceAddress) {
    let etherumAmount = await getBalance(instanceAddress);

    if (etherumAmount == 0) {
        console.log("Op-codes challenge solved!!!");
    } else {
        console.log("Op-codes challenge not solved!!!");
    }
}

module.exports = opcodesTest;