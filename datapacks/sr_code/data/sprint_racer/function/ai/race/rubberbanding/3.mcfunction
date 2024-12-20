#AI WITH SKILL LEVEL 3
#Only cares about the player in 1st, can only be sped up

tag @e[tag=activeplayer,limit=1,sort=nearest,scores={racePosDisplay=1}] add nextPlayer


#compare ONLY to players on the same lap as the AI
scoreboard players set @s math 0
scoreboard players operation @s math = @e[limit=1,tag=nextPlayer] lap
scoreboard players operation @s math -= @s lap
execute if entity @s[scores={math=1..}] run tag @e[tag=nextPlayer] remove nextPlayer
execute if entity @s[scores={math=..-1}] run tag @e[tag=nextPlayer] remove nextPlayer


scoreboard players set @s aiRubberBand 0
execute if entity @e[tag=nextPlayer] unless entity @e[tag=nextPlayer,distance=..20] run scoreboard players set @s aiRubberBand 1
execute if entity @e[tag=nextPlayer] unless entity @e[tag=nextPlayer,distance=..40] run scoreboard players set @s aiRubberBand 2


#if behind 1st place in laps, crank speed up to the max
execute if entity @s[scores={math=1..}] run scoreboard players set @s aiRubberBand 2

execute if entity @s[scores={racePosDisplay=1}] run scoreboard players set @s aiRubberBand 0



#don't rubberband at all if there's a human player close by
execute unless score @s aiRubberBand matches 0 at @s if entity @a[tag=playing,gamemode=adventure,distance=..10] run scoreboard players set @s aiRubberBand 0