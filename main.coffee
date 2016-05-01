harvester = require 'role.harvester'

module.exports.loop = ->
    for name, creep of Game.creeps
        harvester.run creep
