#this stuff is only run once per second for performance
function sprint_racer:items/container_check
execute if entity @s[tag=optBalance,tag=!timeBalance] run function sprint_racer:items/race_balance/_index