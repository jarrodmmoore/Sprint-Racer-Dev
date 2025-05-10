scoreboard players operation #test value = @s wmCustomNum

execute if score #trackGridMode value matches 1 as @e[type=armor_stand,tag=customrace] if score @s customTrackID = #test value run tag @s add wmCustomFocus
execute if score #trackGridMode value matches 1 as @e[type=armor_stand,tag=wmCustomFocus,tag=customrace,limit=1] run scoreboard players operation @a[tag=dataReturn] medalRace = @s medalRace

execute if score #trackGridMode value matches 2 as @e[type=armor_stand,tag=custombattle] if score @s customTrackBID = #test value run tag @s add wmCustomFocus
execute if score #trackGridMode value matches 2 as @e[type=armor_stand,tag=wmCustomFocus,tag=custombattle,limit=1] run scoreboard players operation @a[tag=dataReturn] medalRace = @s medalBattle

tag @e[type=armor_stand,tag=wmCustomFocus] remove wmCustomFocus