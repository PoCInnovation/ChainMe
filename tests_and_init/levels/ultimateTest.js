const web3 = require('./connection');

async function ultimateTest(instanceAddress) {
    const owner = await web3.eth.getStorageAt(instanceAddress, 1);
	const realOwner = await web3.eth.getStorageAt(instanceAddress, 0);

    if (ultimate != owner) {
        console.log("Ultimate challenge solved!!!");
    } else {
        console.log("Ultimate challenge not solved!!!");
    }
}

module.exports = ultimateTest;