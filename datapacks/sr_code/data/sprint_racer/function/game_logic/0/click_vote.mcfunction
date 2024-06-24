#vote/unvote 1
execute if items entity @s weapon.mainhand filled_map[custom_data~{mapVote1:1b}] run tag @s add playerVote1
execute if items entity @s weapon.mainhand filled_map[custom_data~{mapVote1:1b}] run tag @s remove playerVote2
execute if items entity @s weapon.mainhand filled_map[custom_data~{mapVote1:1b}] run tag @s remove playerVote3
execute if items entity @s weapon.mainhand filled_map[custom_data~{mapVoted1:1b}] run tag @s remove playerVote1
execute if items entity @s weapon.mainhand filled_map[custom_data~{mapVoted1:1b}] run tag @s remove playerVote2
execute if items entity @s weapon.mainhand filled_map[custom_data~{mapVoted1:1b}] run tag @s remove playerVote3

#vote/unvote 2
execute if items entity @s weapon.mainhand filled_map[custom_data~{mapVote2:1b}] run tag @s remove playerVote1
execute if items entity @s weapon.mainhand filled_map[custom_data~{mapVote2:1b}] run tag @s add playerVote2
execute if items entity @s weapon.mainhand filled_map[custom_data~{mapVote2:1b}] run tag @s remove playerVote3
execute if items entity @s weapon.mainhand filled_map[custom_data~{mapVoted2:1b}] run tag @s remove playerVote1
execute if items entity @s weapon.mainhand filled_map[custom_data~{mapVoted2:1b}] run tag @s remove playerVote2
execute if items entity @s weapon.mainhand filled_map[custom_data~{mapVoted2:1b}] run tag @s remove playerVote3

#vote/unvote 3
execute if items entity @s weapon.mainhand filled_map[custom_data~{mapVote3:1b}] run tag @s remove playerVote1
execute if items entity @s weapon.mainhand filled_map[custom_data~{mapVote3:1b}] run tag @s remove playerVote2
execute if items entity @s weapon.mainhand filled_map[custom_data~{mapVote3:1b}] run tag @s add playerVote3
execute if items entity @s weapon.mainhand filled_map[custom_data~{mapVoted3:1b}] run tag @s remove playerVote1
execute if items entity @s weapon.mainhand filled_map[custom_data~{mapVoted3:1b}] run tag @s remove playerVote2
execute if items entity @s weapon.mainhand filled_map[custom_data~{mapVoted3:1b}] run tag @s remove playerVote3

#vote sounds
execute if entity @s[tag=playerVote1] run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1
execute if entity @s[tag=playerVote2] run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1.25
execute if entity @s[tag=playerVote3] run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1.5
execute if entity @s[tag=!playerVote1,tag=!playerVote2,tag=!playerVote3] run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 .5

#replace inventory slot
execute if items entity @s weapon.mainhand filled_map[custom_data~{mapv1:1b}] run clear @s filled_map[custom_data~{mapv1:1b}]
execute if items entity @s weapon.mainhand filled_map[custom_data~{mapv2:1b}] run clear @s filled_map[custom_data~{mapv2:1b}]
execute if items entity @s weapon.mainhand filled_map[custom_data~{mapv3:1b}] run clear @s filled_map[custom_data~{mapv3:1b}]

scoreboard players set @s inputCooldown 5