require('dotenv').config();
const opcodesTest = require('./tests_and_init/levels/opcodesTest');

(async () => {
    await opcodesTest('0xdfDf552AeA3d3aD926Ab95201AFDD4E7F9ac3f0b');
})();