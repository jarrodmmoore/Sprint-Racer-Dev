execute as @a[scores={moveState=0,moving=..0}] at @s run function sprint_racer:speedometer/xp_bar/zero
execute as @a[scores={moveState=1,moving=1..}] at @s run function sprint_racer:speedometer/xp_bar/walking/index
execute as @a[scores={moveState=2,moving=1..}] at @s run function sprint_racer:speedometer/xp_bar/sprinting/index
execute as @a[scores={moveState=3}] at @s run function sprint_racer:speedometer/xp_bar/sneaking/index

execute as @a[scores={moveState=1,hitstun=1..}] at @s run function sprint_racer:speedometer/xp_bar/walking/index
execute as @a[scores={moveState=2,hitstun=1..}] at @s run function sprint_racer:speedometer/xp_bar/sprinting/index
execute as @a[scores={moveState=3,hitstun=1..}] at @s run function sprint_racer:speedometer/xp_bar/sneaking/index

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={oTimerGlobal=1}] as @a[scores={hitstun=1..}] run xp set @s 0 points
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={oTimerGlobal=1}] as @a[scores={hitstun=1..}] run xp set @s 0 levels