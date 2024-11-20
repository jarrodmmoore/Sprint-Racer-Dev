scoreboard players remove @e[scores={invisibility=1..}] invisibility 1

tag @e[scores={invisibility=1..,anvil=..999}] add dodge

effect give @e[scores={invisibility=2..}] invisibility 1 1 true
effect clear @e[scores={invisibility=..1}] invisibility
#execute as @e[tag=ai,scores={invisibility=1..}] at @s run function sprint_racer:items/item_tick/invisibility_ai
execute as @a[scores={invisibility=1}] run tag @s remove noInventory2
execute as @e[tag=ai,scores={invisibility=1,aiHoldingItem=41}] run scoreboard players set @s aiHoldingItem 0
clear @a[scores={invisibility=1}] iron_sword[custom_data~{dagger:1b}]
scoreboard players set @e[tag=ai,scores={invisibility=1}] aiHasDagger 0

execute as @a[scores={invisibility=2..}] at @s unless block ~ ~ ~ water unless items entity @s weapon.mainhand *[custom_data~{rightclick:1b}] run tag @s add noInventory2
execute as @a[scores={invisibility=2..}] at @s unless block ~ ~ ~ water if items entity @s weapon.mainhand *[custom_data~{dagger:1b}] run tag @s add noInventory2
execute as @a[scores={invisibility=2..}] at @s if items entity @s weapon.mainhand *[custom_data~{itemhastitle:1b}] run tag @s remove noInventory2
clear @a[scores={invisibility=2..},tag=noInventory2] carrot_on_a_stick
#clear @a[scores={invisibility=2..},tag=noInventory2] stone_button
tag @a[tag=kart_model,scores={invisibility=2..}] remove kart_model
execute as @a[scores={invisibility=2..}] if items entity @s weapon.mainhand *[custom_data~{rightclick:1b}] unless items entity @s weapon.mainhand *[custom_data~{dagger:1b}] run tag @s remove noInventory2
execute as @a[scores={invisibility=2..}] at @s if block ~ ~ ~ water run tag @s remove noInventory2

#convert to seconds for visual timer
execute as @e[scores={invisibility=1..}] run scoreboard players operation @s invisTimer = @s invisibility
execute as @e[scores={invisibility=1..}] run scoreboard players operation @s invisTimer /= @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=20}] rNumber
execute as @e[scores={invisibility=1..}] run scoreboard players add @s invisTimer 1

#dagger deals critical hits from behind
execute unless score global gameState matches 1 run bossbar set minecraft:control_daggerattack players @a[tag=!bbarbump,scores={invisibility=5..},nbt={SelectedItem:{components:{"minecraft:custom_data":{dagger:1b}}}}]
execute unless score global gameState matches 1 as @e[scores={useDagger=..999}] at @s as @e[limit=1,sort=nearest,tag=swordTarget] at @s positioned ^ ^ ^-2 if entity @a[distance=..2,scores={useDagger=..999}] run tag @s add swordCrit
execute as @e[tag=swordCrit] at @s run function sprint_racer:items/item_tick/dagger_crit
scoreboard players reset @e[scores={useDagger=..999}] useDagger
tag @e[tag=swordTarget] remove swordTarget
execute as @a[scores={invisibility=1..}] if items entity @s weapon.mainhand *[custom_data~{dagger:1b}] at @s positioned ^ ^ ^2 run tag @e[tag=playing,limit=1,sort=nearest,distance=..2,scores={invisibility=..0}] add swordTarget
execute as @e[scores={invisibility=1..,aiHasDagger=1..}] at @s positioned ^ ^ ^2 run tag @e[tag=playing,limit=1,sort=nearest,distance=..2,scores={invisibility=..0}] add swordTarget

#actionbar display
scoreboard players set @a[gamemode=!spectator,scores={invisibility=1..,actionbarState=..3}] actionbarState 3
scoreboard players set @a[gamemode=!spectator,scores={invisibility=1..,actionbarState=..3}] actionbarState2 4