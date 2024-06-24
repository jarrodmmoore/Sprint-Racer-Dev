#check if player is on final lap
scoreboard players operation @s lapAnimation = @s lap
scoreboard players operation @s lapAnimation -= @e[tag=w,limit=1] lap
#never show "Final Lap" when in elimination mode
execute unless entity @e[tag=w,scores={gamemodePresetA=2}] run tag @s[scores={lapAnimation=0}] add finallap

scoreboard players set @s lapAnimation 1