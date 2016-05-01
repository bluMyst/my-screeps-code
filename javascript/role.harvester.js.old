/*
 * Module code goes here. Use 'module.exports' to export things:
 * module.exports.thing = 'a thing';
 *
 * You can import it from another modules like this:
 * var mod = require('role.harvester');
 * mod.thing == 'a thing'; // true
 */

module.exports = {
    run: function(creep) {
        var result;
        
        if (_.sum(creep.carry) >= creep.carryCapacity) {
            var targetSpawn = creep.pos.findClosestByRange(FIND_MY_SPAWNS);
            
            if (targetSpawn == null) {
                console.log(creep, 'was unable to find a spawn.');
                return;
            }
            
            creep.say('returning');
            
            result = creep.transfer(targetSpawn);
            if (result != OK) {
                if (result == ERR_NOT_IN_RANGE) {
                    targetSpawn = creep.pos.findClosestByPath(FIND_MY_SPAWNS);
                    result = creep.moveTo(targetSpawn);
                    
                    if (result != OK) {
                        console.log(creep, 'tried to move to', targetSource, '->', result);
                    }
                }
            } else {
                console.log(creep, 'tried to transfer to', targetSource, '->', result);
            }
            
            return;
        }
        
        //creep.say('Harvesting minerals.');
        var targetSource = creep.pos.findClosestByPath(FIND_SOURCES);
        result = creep.harvest(targetSource);
        if (result != OK) {
            if (result == ERR_NOT_IN_RANGE) {
                //console.log(result);
                result = creep.moveTo(targetSource);
                
                if (result != OK) {
                    console.log(creep, 'tried to move to', targetSource, '->', result);
                }
            } else {
                console.log(creep, 'tried to harvest', targetSource, '->', result);
            }
        }
    }
};
