const web3 = require('./connection');

async function badAssTest(instanceAddress) {
    const badAss = await web3.eth.getStorageAt(instanceAddress, 0);
	const owner = await web3.eth.getStorageAt(instanceAddress, 2);

    if (badAss != owner) {
        console.log("BadAss challenge solved!!!");
    } else {
        console.log("BadAss challenge not solved!!!");
    }
}

module.exports = badAssTest;