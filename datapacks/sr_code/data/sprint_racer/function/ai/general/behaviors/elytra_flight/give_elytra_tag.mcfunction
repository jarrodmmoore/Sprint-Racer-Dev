execute if entity @s[tag=ai1] run kill @e[tag=elytraG1,type=armor_stand]
execute if entity @s[tag=ai2] run kill @e[tag=elytraG2,type=armor_stand]
execute if entity @s[tag=ai3] run kill @e[tag=elytraG3,type=armor_stand]
execute if entity @s[tag=ai4] run kill @e[tag=elytraG4,type=armor_stand]
execute if entity @s[tag=ai5] run kill @e[tag=elytraG5,type=armor_stand]
execute if entity @s[tag=ai6] run kill @e[tag=elytraG6,type=armor_stand]
execute if entity @s[tag=ai7] run kill @e[tag=elytraG7,type=armor_stand]
execute if entity @s[tag=ai8] run kill @e[tag=elytraG8,type=armor_stand]
execute if entity @s[tag=ai9] run kill @e[tag=elytraG9,type=armor_stand]

execute if entity @s[tag=ai1] run tag @e[tag=gimmeTag,type=armor_stand] add elytraG1
execute if entity @s[tag=ai2] run tag @e[tag=gimmeTag,type=armor_stand] add elytraG2
execute if entity @s[tag=ai3] run tag @e[tag=gimmeTag,type=armor_stand] add elytraG3
execute if entity @s[tag=ai4] run tag @e[tag=gimmeTag,type=armor_stand] add elytraG4
execute if entity @s[tag=ai5] run tag @e[tag=gimmeTag,type=armor_stand] add elytraG5
execute if entity @s[tag=ai6] run tag @e[tag=gimmeTag,type=armor_stand] add elytraG6
execute if entity @s[tag=ai7] run tag @e[tag=gimmeTag,type=armor_stand] add elytraG7
execute if entity @s[tag=ai8] run tag @e[tag=gimmeTag,type=armor_stand] add elytraG8
execute if entity @s[tag=ai9] run tag @e[tag=gimmeTag,type=armor_stand] add elytraG9

#specific target
execute if entity @s[scores={AIBC_event=6,AIBC_condition=1..}] run tag @s add elytra_specific
execute if entity @e[tag=node,type=marker,distance=..3,tag=elytrajump,tag=!auto_elytra] run tag @s add elytra_specific
execute if entity @e[tag=node,type=marker,distance=..3,tag=elytrajump,tag=!auto_elytra] run tag @s add elytra_specific_2

#DEV
#say elytra
#execute if entity @s[tag=elytra_specific] run say elytra_specific
#execute if entity @s[tag=elytra_specific_2] run say elytra_specific_2

#orient to the current AI
tag @s add self
execute as @e[tag=gimmeTag] at @s run tp @s @e[limit=1,sort=nearest,tag=self]
tag @s remove self

#initial launch
effect give @e[tag=gimmeTag] levitation 1 22 true
execute if entity @s[tag=elytraMed] run effect give @e[tag=gimmeTag] levitation 1 27 true
execute if entity @s[tag=elytraLong] run effect give @e[tag=gimmeTag] levitation 1 32 true
playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 .5
particle cloud ~ ~.1 ~ 0.5 0.1 0.5 .1 25 force
tag @s remove elytraShort
tag @s remove elytraMed
tag @s remove elytraLong

scoreboard players set @e[tag=gimmeTag] lifespan 7
tag @e[tag=gimmeTag] remove gimmeTag