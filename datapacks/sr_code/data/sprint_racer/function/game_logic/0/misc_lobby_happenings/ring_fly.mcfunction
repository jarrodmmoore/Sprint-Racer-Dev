scoreboard players set @s inputCooldown 100

scoreboard players add #lobby_ring value 1

execute at @s run particle instant_effect ~ ~.5 ~ 1 1 1 2 25

execute if score #lobby_ring value matches 1 run playsound minecraft:custom_sfx/lobby_ring master @a 1716 80 406 5 1
execute if score #lobby_ring value matches 2 run playsound minecraft:custom_sfx/lobby_ring master @a 1716 80 406 5 1.5
execute if score #lobby_ring value matches 3 run playsound minecraft:custom_sfx/lobby_ring master @a 1716 80 406 5 1.25
execute if score #lobby_ring value matches 4 run playsound minecraft:custom_sfx/lobby_ring master @a 1716 80 406 5 1.85
execute if score #lobby_ring value matches 5 run playsound minecraft:custom_sfx/lobby_ring master @a 1716 80 406 5 1.5
execute if score #lobby_ring value matches 6.. run playsound minecraft:custom_sfx/lobby_ring master @a 1716 80 406 5 2

execute if score #lobby_ring value matches 6 positioned 1636 88 332 run summon minecraft:armor_stand ~ ~-1.4 ~ {Tags:["cheategg","lobbyprop"],NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:dragon_egg",count:1}],CustomName:'{"text":"SKYSCAPERS","bold":true,"italic":false}'}