tag @s remove foundCP

scoreboard players set @s resetCooldown 45

scoreboard players set @s scriptMove 0

tag @s add self
playsound minecraft:entity.ender_dragon.hurt master @a[tag=!self] ~ ~ ~ 1 .5
execute unless entity @s[tag=RSnotext] run playsound minecraft:entity.ender_dragon.hurt master @s ~ 100000 ~ 100000 .5
execute unless entity @s[tag=RSnotext] run function sprint_racer_language:gameplay/misc_item_text/used_reset
tag @s[tag=RSnotext] remove RSnotext
tag @s remove self

#functions here were moved...
#see sprint_racer:warp_to_saved_coords/_go
tag @s add takeItFromHere

#go back to where we inititally hit the checkpoint
function sprint_racer:warp_to_saved_coords/_go

tag @s remove takeItFromHere

#out of load distance, do a /kill
execute unless entity @s[tag=foundCP] run kill @s

execute unless entity @e[tag=w,tag=noCharity] unless entity @e[tag=w,tag=banNo10] run function sprint_racer:game_logic/1/charity_item/_index

tag @s remove foundCP