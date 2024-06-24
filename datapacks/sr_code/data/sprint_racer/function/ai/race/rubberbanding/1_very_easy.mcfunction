#AI WITH SKILL LEVEL 1
#Can't be sped up by rubberbanding
#Can be slowed down when players are behind them

function sprint_racer:ai/race/rubberbanding/find_previous_ranked_player

#compare ONLY to players on the same lap as the AI
scoreboard players set @s math 0
scoreboard players operation @s math = @e[limit=1,tag=previousPlayer] lap
scoreboard players operation @s math -= @s lap
execute if entity @s[scores={math=..-1}] if entity @e[tag=previousPlayer] run scoreboard players set @s aiRubberBand -2
execute if entity @s[scores={math=1..}] run tag @e[tag=previousPlayer] remove previousPlayer
execute if entity @s[scores={math=..-1}] run tag @e[tag=previousPlayer] remove previousPlayer

execute if entity @e[tag=previousPlayer] run scoreboard players set @s aiRubberBand -2
execute if entity @e[tag=previousPlayer] if entity @e[tag=previousPlayer,distance=..30] run scoreboard players set @s aiRubberBand -1
execute if entity @e[tag=previousPlayer] if entity @e[tag=previousPlayer,distance=..15] run scoreboard players set @s aiRubberBand 0

execute unless entity @e[tag=previousPlayer] run scoreboard players set @s aiRubberBand 0
execute unless entity @s[scores={racePosDisplay=1..12}] run scoreboard players set @s aiRubberBand 0


#VERY EASY AI
#slow down if there's a human player behind them

#find human player in last place
#if we're ahead of that player, slow down probably
scoreboard players set global math 0
execute as @a[tag=playing,tag=!finished,gamemode=adventure,scores={racePosDisplay=1..}] if score @s racePosDisplay > global math run scoreboard players operation global math = @s racePosDisplay
execute as @a[tag=playing,tag=!finished,gamemode=adventure,scores={racePosDisplay=1..}] if score @s racePosDisplay = global math run tag @s add lastPPlayer

execute if score @s racePosDisplay > @a[tag=lastPPlayer,limit=1] racePosDisplay run tag @a[tag=lastPPlayer] remove lastPPlayer

execute if entity @a[tag=lastPPlayer] unless entity @a[tag=lastPPlayer,distance=..7] run scoreboard players set @s[scores={aiRubberBand=0..}] aiRubberBand -1
execute if entity @a[tag=lastPPlayer] unless entity @a[tag=lastPPlayer,distance=..14] run scoreboard players set @s[scores={aiRubberBand=-1..}] aiRubberBand -2
execute if entity @a[tag=lastPPlayer] unless entity @a[tag=lastPPlayer,distance=..21] unless entity @e[distance=..4,type=marker,tag=AIBC,scores={AIBC_event=1}] run scoreboard players set @s hitstun 20
execute if entity @a[tag=lastPPlayer] unless entity @a[tag=lastPPlayer,distance=..21] unless entity @e[distance=..4,type=marker,tag=AIBC,scores={AIBC_event=1}] run scoreboard players set @s moveSpeed 0


#also slow down if any human players are nearby
execute if entity @a[tag=activeplayer,distance=..14] run scoreboard players set @s[scores={aiRubberBand=0..}] aiRubberBand -1

tag @a[tag=lastPPlayer] remove lastPPlayer