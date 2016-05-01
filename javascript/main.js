// test change

var harvester = require('role.harvester');
var creep;

module.exports.loop = function () {
	for (var name in Game.creeps) {
	    creep = Game.creeps[name];
	    harvester.run(creep);
	}
}
