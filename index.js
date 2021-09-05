require('dotenv').config();
const BadAssInit = require('./tests_and_init/levels/badAssInit');
const opcodesInit = require('./tests_and_init/levels/opcodesInit');
const ultimateInit = require('./tests_and_init/levels/ultimateInit');
const opcodesTest = require('./tests_and_init/levels/opcodesTest');
const ultimateTest = require('./tests_and_init/levels/ultimateTest');
const badAssTest = require('./tests_and_init/levels/badAssTest');

var init = {
	"badAss" : BadAssInit,
	"opcodes" : opcodesInit,
	"ultimate" : ultimateInit
};

var test = {
	"badAss" : badAssTest,
	"opcodes" : opcodesTest,
	"ultimate" : ultimateTest
};

(async () => {
	let args = process.argv;

	switch (args[2]) {
		case "init":
			await init[args[3]]();
			break;
		case "test":
			await test[args[3]](args[4]);
			break;
	}
})();