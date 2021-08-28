require('dotenv').config();
const web3 = require('./tests_and_init/utils/connection');
const ultimateInit = require('./tests_and_init/levels/ultimateInit');

(async () => {
    //await opcodesInit();
	//await badAssInit();
	await ultimateInit();
})();