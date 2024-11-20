kill @e[tag=cRace]

execute positioned 1595 83 423 run function sprint_racer_language:lobby/container_names/race
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetA=1}] positioned 1595 82.6 423 run function sprint_racer_language:lobby/container_names/1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetA=2}] positioned 1595 82.6 423 run function sprint_racer_language:lobby/container_names/2
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetA=3}] positioned 1595 82.6 423 run function sprint_racer_language:lobby/container_names/3
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetA=4}] positioned 1595 82.6 423 run function sprint_racer_language:lobby/container_names/4
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetA=5}] positioned 1595 82.6 423 run function sprint_racer_language:lobby/container_names/5
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetA=6}] positioned 1595 82.6 423 run function sprint_racer_language:lobby/container_names/6
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetA=7}] positioned 1595 82.6 423 run function sprint_racer_language:lobby/container_names/7
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetA=8}] positioned 1595 82.6 423 run function sprint_racer_language:lobby/container_names/8
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetA=9}] positioned 1595 82.6 423 run function sprint_racer_language:lobby/container_names/9
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetA=10}] positioned 1595 82.6 423 run function sprint_racer_language:lobby/container_names/10
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetA=11}] positioned 1595 82.6 423 run function sprint_racer_language:lobby/container_names/11

tag @e[tag=setme] add cRace
tag @e[tag=setme] add cDisplay
tag @e[tag=setme] remove setme