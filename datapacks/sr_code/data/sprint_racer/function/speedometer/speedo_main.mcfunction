execute store result bossbar minecraft:speedo value run scoreboard players get @s moveSpeed
bossbar set minecraft:speedo players @a
bossbar set minecraft:speedo visible true

execute if entity @s[scores={speedBoost=0,moveState=1}] run bossbar set minecraft:speedo color white
execute if entity @s[scores={speedBoost=0,moveState=2}] run bossbar set minecraft:speedo color green
execute if entity @s[scores={speedBoost=0,moveState=3}] run bossbar set minecraft:speedo color purple
execute if entity @s[scores={speedBoost=1..20}] run bossbar set minecraft:speedo color yellow
execute if entity @s[scores={speedBoost=31..50}] run bossbar set minecraft:speedo color blue
execute if entity @s[scores={speedBoost=0,hitstun=2..}] run bossbar set minecraft:speedo color red

execute if entity @s[tag=mps,scores={moveState=1}] run function sprint_racer_language:speedometer/mps/walking
execute if entity @s[tag=mps,scores={moveState=2}] run function sprint_racer_language:speedometer/mps/sprinting
execute if entity @s[tag=mps,scores={moveState=3}] run function sprint_racer_language:speedometer/mps/sneaking

execute if entity @s[tag=mph,scores={moveState=1}] run function sprint_racer_language:speedometer/mph/walking
execute if entity @s[tag=mph,scores={moveState=2}] run function sprint_racer_language:speedometer/mph/sprinting
execute if entity @s[tag=mph,scores={moveState=3}] run function sprint_racer_language:speedometer/mph/sneaking

execute if entity @s[tag=kph,scores={moveState=1}] run function sprint_racer_language:speedometer/kph/walking
execute if entity @s[tag=kph,scores={moveState=2}] run function sprint_racer_language:speedometer/kph/sprinting
execute if entity @s[tag=kph,scores={moveState=3}] run function sprint_racer_language:speedometer/kph/sneaking

execute if entity @s[tag=mcunits,scores={moveState=1}] run function sprint_racer_language:speedometer/mcunits/walking
execute if entity @s[tag=mcunits,scores={moveState=2}] run function sprint_racer_language:speedometer/mcunits/sprinting
execute if entity @s[tag=mcunits,scores={moveState=3}] run function sprint_racer_language:speedometer/mcunits/sneaking

execute if entity @s[scores={moving=..0,moveState=..2,hitstun=..0}] run bossbar set minecraft:speedo name {text:" "}