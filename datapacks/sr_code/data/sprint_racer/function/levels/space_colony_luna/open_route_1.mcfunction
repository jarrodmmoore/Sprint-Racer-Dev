#this makes a loop every 3 laps!

scoreboard players set global scl_progress 1
scoreboard players add global scl_lap 1

scoreboard players set @e[type=armor_stand,tag=sc_luna_door_3] scl_progress 11
scoreboard players set @e[type=armor_stand,tag=sc_luna_door_1] scl_progress 1
scoreboard players set @e[type=armor_stand,tag=sc_luna_door_2] scl_progress 31

fill 856 176 2838 862 176 2838 air
clone 864 173 2830 864 173 2836 864 176 2830

fill 817 166 2844 817 167 2872 air

scoreboard players set @e[type=marker,tag=node,tag=sc_luna_junction_3] AIBC_dir1 4
scoreboard players set @e[type=marker,tag=node,tag=sc_luna_junction_2] AIBC_dir1 11

tag @e[type=marker,tag=node,tag=sc_luna_cp2_1] add posCalc
tag @e[type=marker,tag=node,tag=sc_luna_cp2_2] remove posCalc
tag @e[type=marker,tag=node,tag=sc_luna_cp2_3] remove posCalc