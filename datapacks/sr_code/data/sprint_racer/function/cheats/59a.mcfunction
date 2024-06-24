#stuff only happens when in race mode or time attack (race) mode
scoreboard players set #59aValid value 0
execute if entity @e[tag=w,type=armor_stand,scores={gameState=1,gameTime=160..99999}] run scoreboard players set #59aValid value 1
execute if entity @e[tag=w,type=armor_stand,scores={gameState=7,gameTime=160..99999}] run scoreboard players set #59aValid value 1


#give item
tag @a remove hasPracticeBlock
execute as @a[tag=playing] if items entity @s container.* chain_command_block[custom_data~{practiceBlock:1b}] run tag @s add hasPracticeBlock
clear @a[tag=!hasPracticeBlock] chain_command_block[custom_data~{practiceBlock:1b}]
#scoreboard players add @a[gamemode=adventure,tag=!noInventory,tag=!hasPracticeBlock] usePractice 1
execute if score #59aValid value matches 1 run function sprint_racer_language:_dlc_5/cheats/give_practice_block

#use items
execute if score #59aValid value matches 1 as @a[gamemode=adventure,scores={carrotInput=..999,inputCooldown=..0}] if items entity @s weapon.mainhand chain_command_block[custom_data~{practiceBlock:1b}] at @s run function sprint_racer:cheats/warp_to_next_cp
execute if score #59aValid value matches 1 as @a[gamemode=adventure,scores={usePractice=1..,inputCooldown=..0}] at @s run function sprint_racer:cheats/warp_to_previous_cp

#clean-up
scoreboard players reset @a[scores={usePractice=1..}] usePractice