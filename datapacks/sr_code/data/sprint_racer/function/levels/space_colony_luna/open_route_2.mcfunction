scoreboard players set global scl_progress 2
scoreboard players add global scl_lap 1

scoreboard players set @e[type=armor_stand,tag=sc_luna_door_1] scl_progress 11
scoreboard players set @e[type=armor_stand,tag=sc_luna_door_2] scl_progress 21

fill 864 176 2830 864 176 2836 air
clone 856 173 2838 862 173 2838 856 176 2838

clone 902 158 2876 902 159 2888 902 161 2876

scoreboard players set @e[type=marker,tag=node,tag=sc_luna_junction_2] AIBC_dir1 29

tag @e[type=marker,tag=node,tag=sc_luna_cp2_1] remove posCalc
tag @e[type=marker,tag=node,tag=sc_luna_cp2_2] add posCalc
tag @e[type=marker,tag=node,tag=sc_luna_cp2_3] remove posCalc