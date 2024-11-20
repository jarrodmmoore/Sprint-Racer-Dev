scoreboard players set @s rNumber 0
#pick random number between 1 and 50, excluding banned values (tag=banChest)
scoreboard players operation @s rNumber = @e[sort=random,limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=!banChest,scores={rNumber=1..50}] rNumber

#DEBUG
#scoreboard players set @s rNumber 38

#0 = NOTHING

#1..27 = ITEM CHEST
execute if entity @s[scores={rNumber=1..27}] run function sprint_racer:items/container_spawn/item_chest

#28..30 = ENCHANTING TABLE
execute if entity @s[scores={rNumber=28..30}] run function sprint_racer:items/container_spawn/enchanting_table

#31..37 = CAPSULE
execute if entity @s[scores={rNumber=31..37}] run function sprint_racer:items/container_spawn/capsule

#38 = ENDER CHEST
execute if entity @s[scores={rNumber=38}] run function sprint_racer:items/container_spawn/ender_chest

#39..41 = OFFENSE (RED)
execute if entity @s[scores={rNumber=39..41}] run function sprint_racer:items/container_spawn/specialty_red

#42..44 = DEFENSE (YELLOW)
execute if entity @s[scores={rNumber=42..44}] run function sprint_racer:items/container_spawn/specialty_yellow

#45..47 = SPEED (BLUE)
execute if entity @s[scores={rNumber=45..47}] run function sprint_racer:items/container_spawn/specialty_blue

#48..49 = TRAP (GREEN)
execute if entity @s[scores={rNumber=48..49}] run function sprint_racer:items/container_spawn/specialty_green

#50 = GLOBAL (PURPLE)
execute if entity @s[scores={rNumber=50}] run function sprint_racer:items/container_spawn/specialty_purple

particle falling_dust{block_state:"minecraft:red_concrete"} ~ ~.5 ~ 0.4 0.4 0.4 1 20
playsound minecraft:entity.creeper.hurt master @a
kill @s[type=item]