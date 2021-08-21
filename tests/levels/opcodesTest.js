const web3 = require('../utils/connection');

async function opcodesTest() {
    var balance = await web3.eth.getBalance('0x730152A16CC909c9817a3a9F633e52BB42634eca');

    return balance;
}