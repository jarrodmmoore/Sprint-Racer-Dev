#hitstun
execute if entity @s[scores={hitstun=1..}] run scoreboard players set @s moving 0
execute if entity @s[scores={hitstun=1..}] run function sprint_racer:hitstun
execute if entity @s[scores={hitstun=..0}] run scoreboard players set @s moving 1


#check if ai is stuck...
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=200..}] run scoreboard players add @s[scores={moveCheck=0,aiStuckTime=..400}] aiStuckTime 1
scoreboard players remove @s[scores={moveCheck=1..,aiStuckTime=1..}] aiStuckTime 1


#rate of acceleration and deceleration change over time
scoreboard players add @s[scores={moving=1..,rateAccel=..300}] rateAccel 3
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

#weird case when NOT in halftick mode: need to run speedboost code again
execute if score #halftick value matches 0 if entity @s[scores={speedBoost=1..}] at @s run function sprint_racer:speedboost
execute if score #halftick value matches 0 if entity @s[scores={speedBoost=..0,speedBState=1..}] at @s run function sprint_racer:speedboost


execute if entity @s[scores={moving=1..,moveSpeed=..10000}] run scoreboard players operation @s moveSpeed += @s rateAccel
execute if entity @s[scores={moving=..0,moveSpeed=0..}] run scoreboard players operation @s moveSpeed -= @s rateDecel

scoreboard players set @s[scores={moveSpeed=..0}] moveSpeed 0
scoreboard players set @s[scores={moveSpeed=10051..}] moveSpeed 10050