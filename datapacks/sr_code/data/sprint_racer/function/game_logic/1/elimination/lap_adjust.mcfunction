#this is done to keep the lap count in the smallest range possible while still representing all players' relative lap count
#helps the position calculator run as fast as it can :)

#increase max laps if someone's pushing the cap
execute as @e[tag=activeplayer] run scoreboard players set @s math 0
execute as @e[tag=activeplayer] run scoreboard players operation @s math = @s lap
execute as @e[tag=activeplayer] run scoreboard players operation @s math -= @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] lap
execute if entity @e[tag=activeplayer,scores={math=0..}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lap 1

#reduce everyone's lap count by 1, including the max lap count, if nobody is on lap 1
execute unless entity @a[tag=playing,scores={lap=..1}] unless entity @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={lap=..1}] run tag @s add reduceLap
execute if entity @s[tag=reduceLap] run scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lap 1
execute if entity @s[tag=reduceLap] run scoreboard players remove @a[tag=playing] lap 1
execute if entity @s[tag=reduceLap] run scoreboard players remove @e[tag=ai] lap 1
execute if entity @s[tag=reduceLap] run scoreboard players remove @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] lap 1
execute if entity @s[tag=reduceLap] run function sprint_racer:game_logic/1/checkpoint_time_difference/shift_all_down
tag @s[tag=reduceLap] remove reduceLap