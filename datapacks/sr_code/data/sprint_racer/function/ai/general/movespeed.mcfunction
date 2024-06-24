#hitstun
execute if entity @s[scores={hitstun=1..}] run scoreboard players set @s moving 0
execute if entity @s[scores={hitstun=1..}] run function sprint_racer:hitstun
execute if entity @s[scores={hitstun=..0}] run scoreboard players set @s moving 1



#determine if moving or not
scoreboard players remove @s[scores={moveCheck=1..}] moveCheck 1
scoreboard players set @s[scores={coord_dx=..-900}] moveCheck 3
scoreboard players set @s[scores={coord_dz=..-900}] moveCheck 3
scoreboard players set @s[scores={coord_dx=900..}] moveCheck 3
scoreboard players set @s[scores={coord_dz=900..}] moveCheck 3


#check if ai is stuck...
execute if entity @e[tag=w,scores={gameTime=200..}] run scoreboard players add @s[scores={moveCheck=0,aiStuckTime=..400}] aiStuckTime 1
scoreboard players remove @s[nbt={OnGround:1b},scores={moveCheck=1..,aiStuckTime=1..}] aiStuckTime 1
execute if score #halftick value matches 0 run scoreboard players remove @s[nbt={OnGround:1b},scores={moveCheck=1..,aiStuckTime=1..}] aiStuckTime 1


#if coordinates changed significantly within the last 3 ticks, the player is considered moving
scoreboard players set @s[scores={moveCheck=..0}] moving 0
scoreboard players set @s[scores={moveCheck=1..}] moving 1
#exception: airborne players (not in water) are always considered not moving
execute unless block ~ ~ ~ water run scoreboard players set @s[nbt={OnGround:0b}] moving 0
#exception: players with hitstun active are always considered not moving
execute if entity @s[scores={hitstun=2..}] run scoreboard players set @s moving 0
#exception: players is sneaking
execute if entity @s[scores={moveState=3}] run scoreboard players set @s moving 0



#rate of acceleration and deceleration change over time
#scoreboard players add @s[scores={moving=1..,rateAccel=..300}] rateAccel 3
#scoreboard players set @s[scores={moving=1..}] rateDecel 0
scoreboard players remove @s[scores={moving=1..,rateDecel=34..}] rateDecel 4
scoreboard players remove @s[scores={moving=1..,rateDecel=31..}] rateDecel 1

scoreboard players add @s[scores={moving=..0,rateDecel=..300}] rateDecel 3
scoreboard players remove @s[scores={moving=..0,rateDecel=305..}] rateDecel 3
#scoreboard players set @s[scores={moving=..0}] rateAccel 0
#scoreboard players remove @s[scores={moving=..0,rateAccel=29..}] rateAccel 19
#scoreboard players remove @s[scores={moving=..0,rateAccel=11..}] rateAccel 1

#just kidding rateAccel is constant now
scoreboard players remove @s rateAccel 10
scoreboard players set @s rateAccel 140

execute if entity @s[scores={moving=1..,moveSpeed=..10000}] run scoreboard players operation @s moveSpeed += @s rateAccel
execute if entity @s[scores={moving=..0,moveSpeed=0..}] run scoreboard players operation @s moveSpeed -= @s rateDecel

scoreboard players set @s[scores={moveSpeed=..0}] moveSpeed 0
scoreboard players set @s[scores={moveSpeed=10051..}] moveSpeed 10050


#half tick mode echo
function sprint_racer:ai/general/movespeed_echo


#speed boost handling
execute if entity @s[scores={speedBoost=1..}] at @s run function sprint_racer:speedboost
execute if entity @s[scores={speedBoost=..0,speedBState=1..}] at @s run function sprint_racer:speedboost


scoreboard players set @s[scores={moveSpeed=9000..}] speedlevel 7
scoreboard players set @s[scores={moveSpeed=7500..8990}] speedlevel 6
scoreboard players set @s[scores={moveSpeed=6000..7490}] speedlevel 5
scoreboard players set @s[scores={moveSpeed=4500..5990}] speedlevel 4
scoreboard players set @s[scores={moveSpeed=3000..4490}] speedlevel 3
scoreboard players set @s[scores={moveSpeed=1500..2990}] speedlevel 2
scoreboard players set @s[scores={moveSpeed=..1490}] speedlevel 1

#running particles at full speed
execute if entity @s[scores={speedBoost=0,moveState=2,moveSpeed=9900..,invisibility=..0},nbt={OnGround:1b}] run particle block{block_state:"minecraft:black_concrete"} ^ ^.1 ^-1 .1 0 .1 1 1 normal
execute if entity @s[scores={moveState=2,moveSpeed=9900..,invisibility=..0},nbt={OnGround:1b}] run particle block{block_state:"minecraft:white_concrete"} ^ ^.1 ^-1 .1 0 .1 1 1 normal