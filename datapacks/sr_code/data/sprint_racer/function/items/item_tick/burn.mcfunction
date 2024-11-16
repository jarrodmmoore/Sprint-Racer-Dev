#effect give @s[scores={burn=2}] minecraft:resistance 1 2 true
#effect give @s[scores={resistTime=1..,burn=2}] minecraft:resistance 1 3 true

#can't burn in water!
execute if entity @s[scores={burn=..999}] at @s if block ~ ~ ~ water run tag @s add extinguish
execute if entity @s[tag=extinguish] at @s run playsound minecraft:entity.generic.burn master @a ~ ~ ~ 1 1.6
#effect clear @s[tag=extinguish] wither
scoreboard players reset @s[tag=extinguish] burn
tag @s[tag=extinguish] remove extinguish

scoreboard players add @s[scores={burn=..999}] burn 1
scoreboard players reset @s[scores={burn=60..}] burn
scoreboard players reset @s[type=player,gamemode=!adventure] burn

execute if entity @s[scores={burn=3..}] at @s run particle flame ~ ~1 ~ .35 .4 .35 0 2
execute if entity @s[scores={burn=3..45}] at @s run particle flame ~ ~1 ~ .35 .4 .35 0 4
execute if entity @s[scores={burn=3..33}] at @s run particle flame ~ ~1 ~ .35 .4 .35 0 6
execute if entity @s[scores={burn=3..11}] at @s run particle flame ~ ~1 ~ .35 .4 .35 0 8
execute if entity @s[scores={burn=3..}] at @s run playsound minecraft:entity.generic.burn master @a ~ ~ ~ .1 .5


execute if entity @s[scores={burn=3}] at @s run playsound minecraft:entity.generic.burn master @a ~ ~ ~ 2 .6
#effect give @s[scores={burn=3}] minecraft:instant_damage 1 0 true
#execute unless entity @s[scores={resistTime=1..}] run effect give @s[scores={burn=3}] minecraft:wither 3 5 true
#execute if entity @s[scores={resistTime=1..}] run effect give @s[scores={burn=3}] minecraft:wither 2 5 true

#damage
execute if score @s burn matches 3 run damage @s 2 wither at ~ ~-1 ~
execute if score @s burn matches 10 run damage @s 1 wither at ~ ~-1 ~
execute if score @s burn matches 15 run damage @s 1 wither at ~ ~-1 ~
execute if score @s burn matches 20 run damage @s 1 wither at ~ ~-1 ~
execute if score @s burn matches 25 run damage @s 1 wither at ~ ~-1 ~
execute if score @s burn matches 30 run damage @s 1 wither at ~ ~-1 ~
execute if score @s burn matches 35 run damage @s 1 wither at ~ ~-1 ~
execute if score @s burn matches 40 run damage @s 1 wither at ~ ~-1 ~
execute if score @s burn matches 45 run damage @s 1 wither at ~ ~-1 ~
execute if score @s burn matches 50 run damage @s 1 wither at ~ ~-1 ~
execute if score @s burn matches 55 run damage @s 1 wither at ~ ~-1 ~

scoreboard players add @s[scores={burn=3}] rateDecel 50

#effect clear @s[scores={burn=4,nResist=..0,invulTime=..0}] minecraft:resistance