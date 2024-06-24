execute if entity @s[tag=ai1] run tag @e[tag=aiElyTarget1,limit=1,sort=nearest,type=marker,tag=AIBC,tag=!requireGround] add gotcha
execute if entity @s[tag=ai2] run tag @e[tag=aiElyTarget2,limit=1,sort=nearest,type=marker,tag=AIBC,tag=!requireGround] add gotcha
execute if entity @s[tag=ai3] run tag @e[tag=aiElyTarget3,limit=1,sort=nearest,type=marker,tag=AIBC,tag=!requireGround] add gotcha
execute if entity @s[tag=ai4] run tag @e[tag=aiElyTarget4,limit=1,sort=nearest,type=marker,tag=AIBC,tag=!requireGround] add gotcha
execute if entity @s[tag=ai5] run tag @e[tag=aiElyTarget5,limit=1,sort=nearest,type=marker,tag=AIBC,tag=!requireGround] add gotcha
execute if entity @s[tag=ai6] run tag @e[tag=aiElyTarget6,limit=1,sort=nearest,type=marker,tag=AIBC,tag=!requireGround] add gotcha
execute if entity @s[tag=ai7] run tag @e[tag=aiElyTarget7,limit=1,sort=nearest,type=marker,tag=AIBC,tag=!requireGround] add gotcha
execute if entity @s[tag=ai8] run tag @e[tag=aiElyTarget8,limit=1,sort=nearest,type=marker,tag=AIBC,tag=!requireGround] add gotcha
execute if entity @s[tag=ai9] run tag @e[tag=aiElyTarget9,limit=1,sort=nearest,type=marker,tag=AIBC,tag=!requireGround] add gotcha

execute unless entity @e[tag=gotcha,limit=1,type=marker] run function sprint_racer:ai/general/behaviors/elytra_flight/race_refocus_target
execute if entity @e[tag=gotcha,limit=1,type=marker] run function sprint_racer:ai/general/behaviors/elytra_flight/redirect_success

tag @e[tag=gotcha,type=marker] remove gotcha