// Generated by CoffeeScript 1.10.0
var harvester;

harvester = require('role.harvester');

module.exports.loop = function() {
  var creep, name, ref, results;
  ref = Game.creeps;
  results = [];
  for (name in ref) {
    creep = ref[name];
    results.push(harvester.run(creep));
  }
  return results;
};
