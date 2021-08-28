require('dotenv').config();
const web3 = require('./tests_and_init/utils/connection');
const opcodesInit = require('./tests_and_init/levels/opcodesInit');

(async () => {
    await opcodesInit();
})();