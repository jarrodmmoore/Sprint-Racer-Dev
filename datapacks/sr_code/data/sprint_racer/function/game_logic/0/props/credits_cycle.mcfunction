scoreboard players add @s creditsCycle 1
scoreboard players set @s[scores={creditsCycle=521..}] creditsCycle 0

#mantis
execute if entity @s[scores={creditsCycle=1}] run tp @e[tag=creditcycle,type=armor_stand,tag=!cc1] 1658 85 418
execute if entity @s[scores={creditsCycle=0}] run tp @e[tag=creditcycle,type=armor_stand,tag=cc1] 1658 89 418

#marioman
execute if entity @s[scores={creditsCycle=41}] run tp @e[tag=creditcycle,type=armor_stand,tag=!cc2] 1658 85 418
execute if entity @s[scores={creditsCycle=40}] run tp @e[tag=creditcycle,type=armor_stand,tag=cc2] 1658 89 418

#mezimo
execute if entity @s[scores={creditsCycle=81}] run tp @e[tag=creditcycle,type=armor_stand,tag=!cc3] 1658 85 418
execute if entity @s[scores={creditsCycle=80}] run tp @e[tag=creditcycle,type=armor_stand,tag=cc3] 1658 89 418

#mcfilms
execute if entity @s[scores={creditsCycle=121}] run tp @e[tag=creditcycle,type=armor_stand,tag=!cc4] 1658 85 418
execute if entity @s[scores={creditsCycle=120}] run tp @e[tag=creditcycle,type=armor_stand,tag=cc4] 1658 89 418

#jayjo
execute if entity @s[scores={creditsCycle=161}] run tp @e[tag=creditcycle,type=armor_stand,tag=!cc5] 1658 85 418
execute if entity @s[scores={creditsCycle=160}] run tp @e[tag=creditcycle,type=armor_stand,tag=cc5] 1658 89 418

#darkbrine_
execute if entity @s[scores={creditsCycle=201}] run tp @e[tag=creditcycle,type=armor_stand,tag=!cc6] 1658 85 418
execute if entity @s[scores={creditsCycle=200}] run tp @e[tag=creditcycle,type=armor_stand,tag=cc6] 1658 89 418

#senpaiipepe
execute if entity @s[scores={creditsCycle=241}] run tp @e[tag=creditcycle,type=armor_stand,tag=!cc7] 1658 85 418
execute if entity @s[scores={creditsCycle=240}] run tp @e[tag=creditcycle,type=armor_stand,tag=cc7] 1658 89 418

#straightflex
execute if entity @s[scores={creditsCycle=281}] run tp @e[tag=creditcycle,type=armor_stand,tag=!cc8] 1658 85 418
execute if entity @s[scores={creditsCycle=280}] run tp @e[tag=creditcycle,type=armor_stand,tag=cc8] 1658 89 418

#car kid
execute if entity @s[scores={creditsCycle=321}] run tp @e[tag=creditcycle,type=armor_stand,tag=!cc9] 1658 85 418
execute if entity @s[scores={creditsCycle=320}] run tp @e[tag=creditcycle,type=armor_stand,tag=cc9] 1658 89 418

#RedstoneBattery
execute if entity @s[scores={creditsCycle=361}] run tp @e[tag=creditcycle,type=armor_stand,tag=!cc10] 1658 85 418
execute if entity @s[scores={creditsCycle=360}] run tp @e[tag=creditcycle,type=armor_stand,tag=cc10] 1658 89 418

#alyssonjac6
execute if entity @s[scores={creditsCycle=401}] run tp @e[tag=creditcycle,type=armor_stand,tag=!cc11] 1658 85 418
execute if entity @s[scores={creditsCycle=400}] run tp @e[tag=creditcycle,type=armor_stand,tag=cc11] 1658 89 418

#michaelmana
execute if entity @s[scores={creditsCycle=441}] run tp @e[tag=creditcycle,type=armor_stand,tag=!cc12] 1658 85 418
execute if entity @s[scores={creditsCycle=440}] run tp @e[tag=creditcycle,type=armor_stand,tag=cc12] 1658 89 418

#endermity
execute if entity @s[scores={creditsCycle=481}] run tp @e[tag=creditcycle,type=armor_stand,tag=!cc13] 1658 85 418
execute if entity @s[scores={creditsCycle=480}] run tp @e[tag=creditcycle,type=armor_stand,tag=cc13] 1658 89 418

execute as @e[type=armor_stand,tag=creditcycle,x=1658,y=89,z=418,distance=..1] run data merge entity @s {CustomNameVisible:1b}
execute as @e[type=armor_stand,tag=creditcycle,x=1658,y=89,z=418,distance=2..6] run data merge entity @s {CustomNameVisible:false}
