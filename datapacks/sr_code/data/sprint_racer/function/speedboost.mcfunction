tag @s add me

#speed boost pad state
#activate speed boost one the first tick we enter a speed pad's trigger area
execute if score @s speedBState matches 1..10 if entity @s[scores={dSpeedBState=..0,speedBoost=..30}] run scoreboard players set @s speedBoost 1
execute if score @s speedBState matches 11..20 if score @s dSpeedBState matches ..0 run scoreboard players set @s speedBoost 31
scoreboard players operation @s dSpeedBState = @s speedBState

#gold boost
execute if entity @s[scores={speedBoost=1}] run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ .3 1.25
execute if entity @s[scores={speedBoost=1}] run playsound minecraft:entity.wither.shoot master @a[tag=!me] ~ ~ ~ .1 1.25
execute if entity @s[scores={speedBoost=1}] run particle cloud ~ ~.5 ~ .2 .5 .2 .05 7 normal
execute if entity @s[scores={speedBoost=1}] run particle falling_dust{block_state:"minecraft:gold_block"} ~ ~.5 ~ .5 1 .5 1 30 normal

effect give @s[tag=!ai,scores={speedBoost=1..20}] speed 1 20
execute if entity @s[scores={speedBoost=1..20,moveState=1..2,invisibility=..0},nbt={OnGround:1b}] run particle block{block_state:"minecraft:yellow_concrete"} ~ ~.1 ~ .1 0 .1 1 2 normal

scoreboard players add @s[scores={speedBoost=1..20}] moveSpeed 250


#diamond boost
execute if entity @s[scores={speedBoost=31}] run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ .3 1.5
execute if entity @s[scores={speedBoost=31}] run playsound minecraft:entity.wither.shoot master @a[tag=!me] ~ ~ ~ .1 1.5
execute if entity @s[scores={speedBoost=31}] run particle cloud ~ ~.5 ~ .2 .5 .2 .1 7 normal
execute if entity @s[scores={speedBoost=31}] run particle falling_dust{block_state:"minecraft:diamond_block"} ~ ~.5 ~ .5 1 .5 1 30 normal

effect give @s[tag=!ai,scores={speedBoost=31..50}] speed 1 30
scoreboard players remove @s[scores={speedDelay=1..,speedBoost=35..36}] speedDelay 1
scoreboard players remove @s[scores={speedDelay=1..,speedBoost=35..36}] speedBoost 1
execute if entity @s[scores={speedBoost=31..50,moveState=1..2,invisibility=..0},nbt={OnGround:1b}] run particle block{block_state:"minecraft:light_blue_concrete"} ~ ~.1 ~ .1 0 .1 1 2 normal

scoreboard players add @s[scores={speedBoost=31..50}] moveSpeed 500
scoreboard players set @s rateDecel 30
scoreboard players set @s hitstun 0


#timer, remove effect after 1sec
scoreboard players add @s speedBoost 1
execute if score #halftick value matches 1 run scoreboard players add @s speedBoost 1
effect clear @s[scores={speedBoost=20..30}] speed
effect clear @s[scores={speedBoost=50..}] speed
scoreboard players set @s[scores={speedBoost=20..30}] speedBoost 0
scoreboard players set @s[scores={speedBoost=50..}] speedBoost 0

#speed pad state
execute if score @s speedBState matches 1.. run scoreboard players remove @s speedBState 1
execute if score #halftick value matches 1 if score @s speedBState matches 1.. run scoreboard players remove @s speedBState 1
execute if score @s speedBState matches 5..10 run scoreboard players set @s speedBState 0

tag @s remove me