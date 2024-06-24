scoreboard players add @s check 1

#get time difference
execute if entity @e[tag=w,type=armor_stand,limit=1,tag=optBalance,tag=timeBalance] run function sprint_racer:game_logic/1/checkpoint_time_difference/_index

#testing mode, make sure we have pos calc points
execute if entity @e[type=armor_stand,tag=w,tag=customTesting,tag=!noCalcGen,limit=1] run function sprint_racer:game_logic/10/test_track/calc_gen_checkpoint

function sprint_racer:game_logic/1/record_current_split
execute unless entity @s[tag=!checkText,tag=!checkSound] if entity @s[scores={bestSplit1=1..}] run function sprint_racer:game_logic/1/show_split_checkpoint
execute unless entity @s[tag=!checkText,tag=!checkSound] unless entity @s[scores={bestSplit1=1..}] run function sprint_racer_language:gameplay/subtitle_checkpoint_text
function sprint_racer_language:gameplay/checkpoint_hit
tag @s remove checkSound
tag @s remove checkText
tag @s remove checkIncrement
scoreboard players set @s resetCooldown 15
scoreboard players set @s timeSinceCheck 0

#flash split time on new HUD
scoreboard players set @s flashSplitTime 20

#heals
execute if score @s cStatCPHeal matches 1.. run function sprint_racer:game_logic/1/checkpoint_heals

#set repsawn point
scoreboard players set @s lastTeleport 0
execute at @s if block ~ ~1 ~ air if block ~ ~2 ~ air run spawnpoint @s ~ ~1 ~

#tactics mode, get next item
execute if entity @e[tag=w,type=armor_stand,scores={gamemodePresetA=3}] run function sprint_racer:game_logic/1/tactics/give_1

#save coords
function sprint_racer:save_coordinates