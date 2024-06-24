#get difference between max hp and current hp
scoreboard players operation #hpDif value = @s hp
scoreboard players operation #hpDif value -= @s cStatHP
scoreboard players add #hpDif value 20

#stuff for heart rate
scoreboard players set @s value 25
scoreboard players operation @s value -= @s hp
scoreboard players set @s[scores={value=..0}] value 1

#heart flashes faster on low health
scoreboard players operation @s heartRate += @s value
execute if score #halftick value matches 1 run scoreboard players operation @s heartRate += @s value
execute if entity @s[scores={heartRate=201..}] run scoreboard players remove @s heartRate 200
execute if score @s hp >= @s cStatHP run scoreboard players set @s heartRate 1

execute if entity @s[scores={subtitleDelay=..0,heartRate=..100}] run function sprint_racer:game_logic/3/subtitle_health_bright
execute if entity @s[scores={subtitleDelay=..0,heartRate=101..}] run function sprint_racer:game_logic/3/subtitle_health_dark

title @s[scores={KOs=0..,subtitleDelay=..0}] title [""]
scoreboard players remove @s[scores={subtitleDelay=1..}] subtitleDelay 1