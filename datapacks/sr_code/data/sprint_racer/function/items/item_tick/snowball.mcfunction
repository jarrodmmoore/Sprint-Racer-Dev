scoreboard players add @e[type=snowball,tag=!mHitbox,tag=!targetVisual] age 1

execute as @e[type=snowball,tag=!sHasID,tag=!targetVisual] at @s run function sprint_racer:items/item_tick/snowball_get_id
#scoreboard players set @e[scores={useSnowball=..999}] projectileSafe 12
#execute as @e[scores={useSnowball=..999}] at @s run tag @e[limit=1,sort=nearest,type=snowball,tag=!sHasID] add giveID
#execute as @e[scores={useSnowball=..999}] at @s run scoreboard players operation @e[tag=giveID] playerID = @s playerID
#tag @e[type=snowball,tag=giveID,tag=!sHasID] add sHasID
#execute as @e[scores={useSnowball=..999}] at @s run tag @e[tag=giveID] remove giveID
scoreboard players reset @e[scores={useSnowball=..999}] useSnowball

execute as @e[type=snowball,tag=!mHitbox,tag=!targetVisual,tag=sHasID] at @s run particle end_rod ~ ~.1 ~ 0 0 0 0 1 force
execute as @e[type=snowball,tag=!mHitbox,tag=!targetVisual,tag=sHasID] at @s run particle end_rod ~ ~.1 ~ .6 .6 .6 0 3
execute as @e[type=snowball,tag=!mHitbox,tag=!targetVisual,tag=sHasID] at @s run function sprint_racer:items/item_tick/snowball_hit_detect

#OLD, better hit detection system was made
#execute as @e[type=snowball,tag=!mHitbox,tag=!targetVisual,scores={age=6..}] at @s run particle end_rod ~ ~.1 ~ .4 .4 .4 0 2
#execute as @e[type=snowball,tag=!mHitbox,tag=!targetVisual,scores={age=10..}] at @s run particle end_rod ~ ~.1 ~ .6 .6 .6 0 3
#execute as @e[type=snowball,tag=!mHitbox,tag=!targetVisual,scores={age=2..7}] at @s run tag @e[distance=..2,tag=activeplayer,scores={projectileSafe=..0}] add zapped
#execute as @e[type=snowball,tag=!mHitbox,tag=!targetVisual,scores={age=8..}] at @s run tag @e[distance=..4,tag=activeplayer,scores={projectileSafe=..0}] add zapped

execute as @e[type=snowball,tag=!mHitbox,tag=!targetVisual,scores={age=2..}] at @s run scoreboard players set @e[distance=..4,tag=chickenmine] electrocute 1