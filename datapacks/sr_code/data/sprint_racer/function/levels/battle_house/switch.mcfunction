tag @e[tag=w,tag=switchON] add turnItOff

#TURN ON (LIME)
execute if entity @e[tag=w,tag=!turnItOff] run fill -2273 68 -1499 -2273 70 -1497 minecraft:air destroy
execute if entity @e[tag=w,tag=!turnItOff] run fill -2273 69 -1482 -2273 70 -1481 minecraft:air destroy
execute if entity @e[tag=w,tag=!turnItOff] run fill -2273 68 -1466 -2273 70 -1464 minecraft:air destroy
execute if entity @e[tag=w,tag=!turnItOff] run fill -2273 77 -1468 -2273 79 -1466 minecraft:air destroy
execute if entity @e[tag=w,tag=!turnItOff] run fill -2263 77 -1451 -2263 78 -1450 minecraft:air destroy
execute if entity @e[tag=w,tag=!turnItOff] run fill -2252 69 -1444 -2249 71 -1444 minecraft:air destroy
execute if entity @e[tag=w,tag=!turnItOff] run fill -2236 69 -1442 -2234 71 -1442 minecraft:air destroy
execute if entity @e[tag=w,tag=!turnItOff] run fill -2264 68 -1506 -2262 70 -1506 minecraft:air destroy
execute if entity @e[tag=w,tag=!turnItOff] run fill -2231 68 -1507 -2228 71 -1507 minecraft:air destroy
execute if entity @e[tag=w,tag=!turnItOff] run fill -2267 68 -1456 -2265 70 -1456 minecraft:air destroy
execute if entity @e[tag=w,tag=!turnItOff] run fill -2255 65 -1434 -2253 65 -1434 lime_wool
execute if entity @e[tag=w,tag=!turnItOff] run function sprint_racer_language:levels/switch_pressed_on
execute if entity @e[tag=w,tag=!turnItOff] run tag @e[tag=w,type=armor_stand] add switchON

#TURN OFF (RED)
execute if entity @e[tag=w,tag=turnItOff] run fill -2273 68 -1499 -2273 70 -1497 minecraft:glass
execute if entity @e[tag=w,tag=turnItOff] run fill -2273 69 -1482 -2273 70 -1481 minecraft:glass
execute if entity @e[tag=w,tag=turnItOff] run fill -2273 68 -1466 -2273 70 -1464 minecraft:glass
execute if entity @e[tag=w,tag=turnItOff] run fill -2273 77 -1468 -2273 79 -1466 minecraft:glass
execute if entity @e[tag=w,tag=turnItOff] run fill -2263 77 -1451 -2263 78 -1450 minecraft:glass
execute if entity @e[tag=w,tag=turnItOff] run fill -2252 69 -1444 -2249 71 -1444 minecraft:glass
execute if entity @e[tag=w,tag=turnItOff] run fill -2236 69 -1442 -2234 71 -1442 minecraft:glass
execute if entity @e[tag=w,tag=turnItOff] run fill -2264 68 -1506 -2262 70 -1506 minecraft:glass
execute if entity @e[tag=w,tag=turnItOff] run fill -2231 68 -1507 -2228 71 -1507 minecraft:glass
execute if entity @e[tag=w,tag=turnItOff] run fill -2267 68 -1456 -2265 70 -1456 minecraft:glass
execute if entity @e[tag=w,tag=turnItOff] run fill -2255 65 -1434 -2253 65 -1434 red_wool
execute if entity @e[tag=w,tag=turnItOff] run function sprint_racer_language:levels/switch_pressed_off
execute if entity @e[tag=w,tag=turnItOff] run tag @e[tag=w,type=armor_stand] remove switchON

tag @e[tag=w,type=armor_stand] remove turnItOff