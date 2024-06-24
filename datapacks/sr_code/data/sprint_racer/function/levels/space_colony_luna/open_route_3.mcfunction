scoreboard players set global scl_progress 3
scoreboard players add global scl_lap 1

scoreboard players set @e[type=armor_stand,tag=sc_luna_door_3] scl_progress 1

clone 816 163 2844 816 164 2872 817 166 2844

fill 902 161 2876 902 162 2888 air
fill 912 161 2876 912 162 2888 air

scoreboard players set @e[type=marker,tag=node,tag=sc_luna_junction_3] AIBC_dir1 54

tag @e[type=marker,tag=node,tag=sc_luna_cp2_1] remove posCalc
tag @e[type=marker,tag=node,tag=sc_luna_cp2_2] remove posCalc
tag @e[type=marker,tag=node,tag=sc_luna_cp2_3] add posCalc