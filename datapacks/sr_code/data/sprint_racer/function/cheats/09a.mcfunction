scoreboard players set @a rateAccel 0
scoreboard players set @a moveSpeed 0

#give item
tag @a remove hasKart
execute as @a[tag=playing] if items entity @s hotbar.* minecart[custom_data~{kart:1b}] run tag @s add hasKart
clear @a[tag=!hasKart] minecart[custom_data~{kart:1b}]
function sprint_racer_language:_dlc_1/cheats/give_kart

#spawn kart
execute as @a[scores={carrotInput=..999,inputCooldown=..0}] if items entity @s weapon.mainhand minecart[custom_data~{kart:1b}] at @s unless entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] run function sprint_racer:cheats/spawn_kart
execute as @a[tag=playing,gamemode=adventure] at @s run scoreboard players set @e[tag=playerkart,distance=..4,limit=1,sort=nearest,tag=!kartHasOwner] lifespan 40
execute as @e[tag=playerkart] at @s run scoreboard players set @e[tag=kartpig,distance=..4,limit=1,sort=nearest] lifespan 40

#kart bursts when abandoned
execute as @e[tag=playerkart,scores={lifespan=..20}] at @s run function sprint_racer:cheats/kart_burst
execute as @e[tag=kartpig,scores={lifespan=..14}] at @s run tp @s ~ ~-10000 ~

#karts move around
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!halftick,scores={oTimerGlobal=1}] as @a[nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] at @s run function sprint_racer:cheats/drive_kart
execute if score #halftick value matches 1 as @a[nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] at @s run function sprint_racer:cheats/drive_kart

#prevent zombie pigmen due to lightning
kill @e[type=zombified_piglin,tag=!cminezombie]

tag @e[tag=ejectkart] remove ejectkart