scoreboard players set @s itemSplitTime 0

execute if entity @s[scores={check=1}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c1
execute if entity @s[scores={check=2}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c2
execute if entity @s[scores={check=3}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c3
execute if entity @s[scores={check=4}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c4
execute if entity @s[scores={check=5}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c5

execute if entity @s[scores={check=6}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c6
execute if entity @s[scores={check=7}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c7
execute if entity @s[scores={check=8}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c8
execute if entity @s[scores={check=9}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c9
execute if entity @s[scores={check=10}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c10

execute if entity @s[scores={check=11}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c11
execute if entity @s[scores={check=12}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c12
execute if entity @s[scores={check=13}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c13
execute if entity @s[scores={check=14}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c14
execute if entity @s[scores={check=15}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c15

execute if entity @s[scores={check=16}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c16
execute if entity @s[scores={check=17}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c17
execute if entity @s[scores={check=18}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c18
execute if entity @s[scores={check=19}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c19
execute if entity @s[scores={check=20}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c20

execute if entity @s[scores={check=21}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c21
execute if entity @s[scores={check=22}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c22
execute if entity @s[scores={check=23}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c23
execute if entity @s[scores={check=24}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c24
execute if entity @s[scores={check=25}] run function sprint_racer:game_logic/1/checkpoint_time_difference/c25

#thresholds for item balance (adjustable?)
scoreboard players set @s itemLuck 1
execute if score @s itemSplitTime >= global timeThreshold2 run scoreboard players set @s itemLuck 2
execute if score @s itemSplitTime >= global timeThreshold3 run scoreboard players set @s itemLuck 3
execute if score @s itemSplitTime >= global timeThreshold4 run scoreboard players set @s itemLuck 4
execute if score @s itemSplitTime >= global timeThreshold5 run scoreboard players set @s itemLuck 5
execute if score @s itemSplitTime >= global timeThreshold6 run scoreboard players set @s itemLuck 6

#if we're in second place, save our time difference for anvil odds calculations
execute if score @s racePosDisplay matches 2 run scoreboard players operation #1stPlaceLead value = @s itemSplitTime

#DEBUG
#tellraw @s ["",{text:"[DEV] Time behind 1st: "},{score:{name:"@s",objective:"itemSplitTime"}}]
#tellraw @s ["",{text:"[DEV] Item luck is now: "},{score:{name:"@s",objective:"itemLuck"}}]

#rival ai gets slightly better items
execute if entity @s[tag=ai,tag=ai_rival] run scoreboard players add @s[scores={itemLuck=..5}] itemLuck 1

#inverted balance cheat
execute if entity @e[tag=22a,tag=cheats,x=1548,y=148,z=422,distance=..1,limit=1,type=armor_stand] run function sprint_racer:items/invert_balance_self

#item luck stat
scoreboard players operation @s[type=player] itemLuck += @s cStatLuck
scoreboard players set @s[scores={itemLuck=7..}] itemLuck 6
scoreboard players set @s[scores={itemLuck=..0}] itemLuck 1