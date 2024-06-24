execute at @s positioned ^ ^ ^1.5 run tag @e[limit=1,sort=nearest,type=villager,tag=!babyVillager] add checkVillager

tag @s add fixedMsg
#execute if entity @e[type=villager,tag=checkVillager,tag=stationary_v] run tag @s add fixedMsg
execute if entity @s[tag=fixedMsg] run scoreboard players operation @s villagerTip = @e[type=villager,tag=checkVillager,limit=1] villagerTip

tag @e[type=villager,tag=checkVillager] remove checkVillager

scoreboard players add @s[tag=!fixedMsg,scores={inputCooldown=..0}] villagerTip 1
scoreboard players set @s[tag=!fixedMsg,scores={villagerTip=21..}] villagerTip 1
scoreboard players set @s[tag=!fixedMsg,scores={villagerTip=..0}] villagerTip 1

execute if entity @s[tag=fixedMsg,scores={inputCooldown=..0}] run function sprint_racer_language:_dlc_4/lobby/villager_tips/wall

execute if entity @s[scores={villagerTip=1,inputCooldown=..0}] run function sprint_racer_language:_dlc_2/lobby/villager_tips/1
execute if entity @s[scores={villagerTip=2,inputCooldown=..0}] run function sprint_racer_language:_dlc_2/lobby/villager_tips/2
execute if entity @s[scores={villagerTip=3,inputCooldown=..0}] run function sprint_racer_language:_dlc_2/lobby/villager_tips/3
execute if entity @s[scores={villagerTip=4,inputCooldown=..0}] run function sprint_racer_language:_dlc_2/lobby/villager_tips/4
execute if entity @s[scores={villagerTip=5,inputCooldown=..0}] run function sprint_racer_language:_dlc_2/lobby/villager_tips/5
execute if entity @s[scores={villagerTip=6,inputCooldown=..0}] run function sprint_racer_language:_dlc_2/lobby/villager_tips/6
execute if entity @s[scores={villagerTip=7,inputCooldown=..0}] run function sprint_racer_language:_dlc_2/lobby/villager_tips/7
execute if entity @s[scores={villagerTip=8,inputCooldown=..0}] run function sprint_racer_language:_dlc_2/lobby/villager_tips/8
execute if entity @s[scores={villagerTip=9,inputCooldown=..0}] run function sprint_racer_language:_dlc_2/lobby/villager_tips/9
execute if entity @s[scores={villagerTip=19,inputCooldown=..0}] run function sprint_racer_language:_dlc_2/lobby/villager_tips/10
execute if entity @s[scores={villagerTip=17,inputCooldown=..0}] run function sprint_racer_language:_dlc_2/lobby/villager_tips/11
execute if entity @s[scores={villagerTip=12,inputCooldown=..0}] run function sprint_racer_language:_dlc_2/lobby/villager_tips/12
execute if entity @s[scores={villagerTip=13,inputCooldown=..0}] run function sprint_racer_language:_dlc_2/lobby/villager_tips/13
execute if entity @s[scores={villagerTip=14,inputCooldown=..0}] run function sprint_racer_language:_dlc_2/lobby/villager_tips/14
execute if entity @s[scores={villagerTip=15,inputCooldown=..0}] run function sprint_racer_language:_dlc_2/lobby/villager_tips/15
execute if entity @s[scores={villagerTip=16,inputCooldown=..0}] run function sprint_racer_language:_dlc_2/lobby/villager_tips/16
execute if entity @s[scores={villagerTip=11,inputCooldown=..0}] run function sprint_racer_language:_dlc_2/lobby/villager_tips/17
execute if entity @s[scores={villagerTip=21,inputCooldown=..0}] run function sprint_racer_language:_dlc_2/lobby/villager_tips/18
execute if entity @s[scores={villagerTip=10,inputCooldown=..0}] run function sprint_racer_language:_dlc_2/lobby/villager_tips/19
execute if entity @s[scores={villagerTip=18,inputCooldown=..0}] run function sprint_racer_language:_dlc_2/lobby/villager_tips/20
execute if entity @s[scores={villagerTip=20,inputCooldown=..0}] run function sprint_racer_language:_dlc_4/lobby/villager_tips/21
execute if entity @s[scores={villagerTip=22,inputCooldown=..0}] run function sprint_racer_language:_dlc_4/lobby/villager_tips/22
execute if entity @s[scores={villagerTip=23,inputCooldown=..0}] run function sprint_racer_language:_dlc_4/lobby/villager_tips/23
execute if entity @s[scores={villagerTip=24,inputCooldown=..0}] run function sprint_racer_language:_dlc_4/lobby/villager_tips/24
execute if entity @s[scores={villagerTip=25,inputCooldown=..0}] run function sprint_racer_language:_dlc_4/lobby/villager_tips/25
execute if entity @s[scores={villagerTip=26,inputCooldown=..0}] run function sprint_racer_language:_dlc_4/lobby/villager_tips/26
execute if entity @s[scores={villagerTip=27,inputCooldown=..0}] run function sprint_racer_language:_dlc_4/lobby/villager_tips/27
execute if entity @s[scores={villagerTip=28..,inputCooldown=..0}] run function sprint_racer_language:_dlc_2/lobby/villager_tips/1

tag @s remove fixedMsg

execute if entity @s[scores={inputCooldown=..0}] run scoreboard players set @s inputCooldown 10

scoreboard players reset @s villagerTalk