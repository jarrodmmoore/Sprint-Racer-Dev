kill @e[tag=cBattle]

execute positioned 1591 83 423 run function sprint_racer_language:lobby/container_names/battle
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetB=1}] positioned 1591 82.6 423 run function sprint_racer_language:lobby/container_names/1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetB=2}] positioned 1591 82.6 423 run function sprint_racer_language:lobby/container_names/2
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetB=3}] positioned 1591 82.6 423 run function sprint_racer_language:lobby/container_names/3
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetB=4}] positioned 1591 82.6 423 run function sprint_racer_language:lobby/container_names/4
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetB=5}] positioned 1591 82.6 423 run function sprint_racer_language:lobby/container_names/5
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetB=6}] positioned 1591 82.6 423 run function sprint_racer_language:lobby/container_names/6
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetB=7}] positioned 1591 82.6 423 run function sprint_racer_language:lobby/container_names/7
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetB=8}] positioned 1591 82.6 423 run function sprint_racer_language:lobby/container_names/8
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetB=9}] positioned 1591 82.6 423 run function sprint_racer_language:lobby/container_names/9
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetB=10}] positioned 1591 82.6 423 run function sprint_racer_language:lobby/container_names/10
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemPresetB=11}] positioned 1591 82.6 423 run function sprint_racer_language:lobby/container_names/11

tag @e[tag=setme] add cBattle
tag @e[tag=setme] add cDisplay
tag @e[tag=setme] remove setme