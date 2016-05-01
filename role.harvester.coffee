###
Module code goes here. Use 'module.exports' to export things:
module.exports.thing = 'a thing';

You can import it from another modules like this:
var mod = require('role.harvester');
mod.thing == 'a thing'; // true
###

logError = (creep, result, triedTo...) ->
    triedTo = triedTo.join ' '
    console.log "#{creep} tried to #{triedTo} -> #{result}"

module.exports =
    run: (creep) ->
        if _.sum(creep.carry) >= creep.carryCapacity
            targetSpawn = creep.pos.findClosestByRange FIND_MY_SPAWNS

            if targetSpawn == null
                console.log creep, 'was unable to find a spawn.'
                return

            creep.say 'returning'

            result = creep.transfer targetSpawn
            if result != OK
                if result == ERR_NOT_IN_RANGE
                    targetSpawn = creep.pos.findClosestByPath FIND_MY_SPAWNS
                    result = creep.moveTo targetSpawn

                    if result != OK
                        logError creep, result, 'move to', targetSource
            else
                logError creep, result, 'transfer to', targetSource

            return

        #creep.say('Harvesting minerals.');
        targetSource = creep.pos.findClosestByPath(FIND_SOURCES)
        result = creep.harvest(targetSource)

        if result != OK
            if result == ERR_NOT_IN_RANGE
                result = creep.moveTo targetSource

                if result != OK
                    logError creep, result, 'move to', targetSource
            else
                logError creep, result, 'harvest', targetSource
