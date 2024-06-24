#check if players are walking instead of sprinting
scoreboard players add @s[scores={moving=1..,moveState=1,hitstun=..0,timeWalked=..55}] timeWalked 1
execute if entity @s[nbt={OnGround:1b},scores={timeWalked=1..}] unless entity @s[scores={moveState=1}] run scoreboard players remove @s timeWalked 1
execute if entity @s[scores={timeWalked=1..}] if entity @s[scores={elytraTimer=1..}] run scoreboard players remove @s timeWalked 2
execute if entity @s[scores={timeWalked=1..}] if block ~ ~ ~ water run scoreboard players remove @s timeWalked 2


#determine state of movement (walking, sprinting, sneaking, etc)
scoreboard players set @s[scores={checkWalk=0,checkSprint=0,checkSneak=0}] moveState 0
scoreboard players set @s[scores={checkWalk=1..}] moveState 1
scoreboard players set @s[scores={checkSprint=1..}] moveState 2
scoreboard players set @s[scores={checkSneak=1..}] moveState 3
execute if block ~ ~ ~ water unless entity @s[scores={moveState=3}] run scoreboard players set @s moveState 1
scoreboard players set @s checkWalk 0
scoreboard players set @s checkSprint 0
scoreboard players set @s checkSneak 0

#hp needs to be enabled for new players
execute unless entity @s[scores={hp=..999}] unless entity @s[scores={hpSet=..999}] run scoreboard players set @s hpSet 70

#determine if player is moving or not
scoreboard players remove @s[scores={moveCheck=1..}] moveCheck 1
scoreboard players set @s[scores={coord_dx=..-900}] moveCheck 3
scoreboard players set @s[scores={coord_dz=..-900}] moveCheck 3
scoreboard players set @s[scores={coord_dx=900..}] moveCheck 3
scoreboard players set @s[scores={coord_dz=900..}] moveCheck 3

#if coordinates changed significantly within the last 3 ticks, the player is considered moving
scoreboard players set @s[scores={moveCheck=..0}] moving 0
scoreboard players set @s[scores={moveCheck=1..}] moving 1
#exception: airborne players (not in water) are always considered not moving
execute unless block ~ ~ ~ water run scoreboard players set @s[nbt={OnGround:0b}] moving 0
#exception: players with hitstun active are always considered not moving
execute if entity @s[scores={hitstun=2..}] run scoreboard players set @s moving 0
#exception: players is sneaking
execute if entity @s[scores={moveState=3}] run scoreboard players set @s moving 0



#count down hitstun timer
execute if entity @s[scores={hitstun=1..}] run function sprint_racer:hitstun


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

#just kidding I'm making rateAccel constant
scoreboard players remove @s rateAccel 10
#scoreboard players set @s[scores={rateAccel=..139}] rateAccel 140
execute if score @s rateAccel < @s cStatAccel run scoreboard players operation @s rateAccel = @s cStatAccel

execute if entity @s[scores={moving=1..,moveSpeed=..10000}] run scoreboard players operation @s moveSpeed += @s rateAccel
execute if entity @s[scores={moving=..0,moveSpeed=0..}] run scoreboard players operation @s moveSpeed -= @s rateDecel

scoreboard players set @s[scores={moveSpeed=..0}] moveSpeed 0
scoreboard players set @s[scores={moveSpeed=10051..}] moveSpeed 10050

#repeat some stuff in case of halftick mode
execute if score #halftick value matches 1 run function sprint_racer:movespeed_echo


#determine the players "speed level" and give corresponding speed effect
scoreboard players operation @s speedlevel2 = @s speedlevel

scoreboard players set @s[scores={moveSpeed=9000..}] speedlevel 7
scoreboard players set @s[scores={moveSpeed=7500..8990}] speedlevel 6
scoreboard players set @s[scores={moveSpeed=6000..7490}] speedlevel 5
scoreboard players set @s[scores={moveSpeed=4500..5990}] speedlevel 4
scoreboard players set @s[scores={moveSpeed=3000..4490}] speedlevel 3
scoreboard players set @s[scores={moveSpeed=1500..2990}] speedlevel 2
scoreboard players set @s[scores={moveSpeed=..1490}] speedlevel 1

scoreboard players operation @s dspeedlevel = @s speedlevel
scoreboard players operation @s dspeedlevel -= @s speedlevel2

execute if entity @s[scores={speedBoost=0,dspeedlevel=..-1}] run effect clear @s minecraft:speed

#speed boost handling
execute if entity @s[scores={speedBoost=1..}] at @s run function sprint_racer:speedboost
execute if entity @s[scores={speedBoost=..0,speedBState=1..}] at @s run function sprint_racer:speedboost

#if not boosting, give normal speed effects
effect give @s[scores={speedBoost=0,speedlevel=7}] speed 1 7 true
effect give @s[scores={speedBoost=0,speedlevel=6}] speed 1 6 true
effect give @s[scores={speedBoost=0,speedlevel=5}] speed 1 5 true
effect give @s[scores={speedBoost=0,speedlevel=4}] speed 1 4 true
effect give @s[scores={speedBoost=0,speedlevel=3}] speed 1 3 true
effect give @s[scores={speedBoost=0,speedlevel=2}] speed 1 2 true
effect give @s[scores={speedBoost=0,speedlevel=1}] speed 1 1 true

#running particles at full speed
execute if entity @s[scores={speedBoost=0,moveState=2,moveSpeed=9900..,invisibility=..0},nbt={OnGround:1b}] rotated ~ 0 run particle block{block_state:"minecraft:black_concrete"} ^ ^.1 ^-1 .1 0 .1 1 2 normal
execute if entity @s[scores={moveState=2,moveSpeed=9900..,invisibility=..0},nbt={OnGround:1b}] rotated ~ 0 run particle block{block_state:"minecraft:white_concrete"} ^ ^.1 ^-1 .1 0 .1 1 2 normal