execute if entity @a[team=!player,tag=eliminated] unless entity @a[team=!player,tag=eliminated,scores={revengeMine=1}] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add resetRev
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=resetRev] run scoreboard objectives remove revengeMine
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=resetRev] run scoreboard objectives add revengeMine dummy
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=resetRev] revengeMine 1
tag @e[tag=resetRev] remove resetRev

execute as @a[team=!player,tag=eliminated] unless entity @s[scores={revengeMine=1..}] run function sprint_racer:cheats/get_revenge_id

#spawn chicken timer
scoreboard players add @a[team=!player,tag=eliminated,scores={revengeMine=1..}] revengeTime 1
scoreboard players set @a[team=!player,tag=eliminated,scores={revengeMine=1..,revengeTime=101..}] revengeTime 1

execute as @a[team=!player,tag=eliminated,scores={revengeMine=1..}] at @s run function sprint_racer:cheats/revenge_player_main