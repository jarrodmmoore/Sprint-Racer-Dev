#DEV, testing jump heights to make sure they're accurate
#scoreboard players set @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand] aiJBIntensity 20

tag @s[tag=jump_at_next_ledge] remove jump_at_next_ledge
tag @s[tag=jump_at_next_ledge_deep] remove jump_at_next_ledge_deep

execute if entity @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBIntensity=..0}] run function sprint_racer:ai/general/jump/0
execute if entity @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBIntensity=1}] run function sprint_racer:ai/general/jump/1
execute if entity @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBIntensity=2}] run function sprint_racer:ai/general/jump/2
execute if entity @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBIntensity=3}] run function sprint_racer:ai/general/jump/3
execute if entity @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBIntensity=4}] run function sprint_racer:ai/general/jump/4
execute if entity @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBIntensity=5}] run function sprint_racer:ai/general/jump/5
execute if entity @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBIntensity=6}] run function sprint_racer:ai/general/jump/6
execute if entity @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBIntensity=7}] run function sprint_racer:ai/general/jump/7
execute if entity @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBIntensity=8}] run function sprint_racer:ai/general/jump/8
execute if entity @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBIntensity=9}] run function sprint_racer:ai/general/jump/9
execute if entity @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBIntensity=10}] run function sprint_racer:ai/general/jump/10
execute if entity @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBIntensity=11}] run function sprint_racer:ai/general/jump/11
execute if entity @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBIntensity=12}] run function sprint_racer:ai/general/jump/12
execute if entity @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBIntensity=13}] run function sprint_racer:ai/general/jump/13
execute if entity @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBIntensity=14}] run function sprint_racer:ai/general/jump/14
execute if entity @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBIntensity=15}] run function sprint_racer:ai/general/jump/15
execute if entity @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBIntensity=16}] run function sprint_racer:ai/general/jump/16
execute if entity @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBIntensity=17}] run function sprint_racer:ai/general/jump/17
execute if entity @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBIntensity=18}] run function sprint_racer:ai/general/jump/18
execute if entity @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBIntensity=19}] run function sprint_racer:ai/general/jump/19
execute if entity @e[tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBIntensity=20}] run function sprint_racer:ai/general/jump/20

#get a lil burst of speed here
scoreboard players set @s speedlevel 7

#interrupt healing if we jump
tag @s[tag=aiHealing] remove aiHealing

tag @s[scores={speedBoost=1..}] add aiAirBoost