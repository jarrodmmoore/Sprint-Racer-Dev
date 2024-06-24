#mark tracks as viable
tag @e[tag=trackStandB,tag=!btBlacklist] add pickViable

#no viable choices? pick anything regardless of difficulty
execute unless entity @e[tag=pickViable] if entity @e[tag=trackStandB] run tag @e[tag=trackStandB,tag=!rtBlacklist] add pickViable

#make sure at least one track is off cooldown
execute unless entity @e[tag=pickViable,scores={randomCooldown2=..0}] run scoreboard players set @e[limit=1,sort=random,tag=pickViable] randomCooldown2 0

#choose a track at random
tag @e[limit=1,sort=random,tag=pickViable,scores={randomCooldown2=..0}] add chosenTrack

#in case of error
execute unless entity @e[tag=chosenTrack] run tag @e[tag=random,scores={rNumber=50}] add chosenTrack

tag @e[tag=pickViable] remove pickViable

#cooldown prevents track from getting picked multiple times in a row
scoreboard players remove @e[tag=trackStandB,scores={randomCooldown2=1..}] randomCooldown2 1
scoreboard players set @e[limit=1,tag=chosenTrack] randomCooldown2 4

#"in order" track mode overrides random
execute as @e[tag=w,type=armor_stand,tag=optInOrder,tag=!grandprix] if entity @e[type=armor_stand,limit=1,tag=!btBlacklist,tag=trackStandB] run function sprint_racer:random/in_order_battle

execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ 100000 ~ 100000 2
execute as @e[tag=chosenTrack] run function sprint_racer:game_logic/0/vote_preview/battle/v_b_index_announce

#this is for grand prix handling missing tracks...
tag @s[tag=oops_an_accident] remove oops_an_accident