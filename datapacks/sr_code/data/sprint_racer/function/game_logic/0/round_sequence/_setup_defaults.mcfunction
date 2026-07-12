#this will be run automatically if data is missing
#so older SR worlds can quickly adapt to the new round system if needed

#1 = race
#2 = battle
#3 = random gamemode
#4 = [CHOOSE] track selection

data modify storage sprint_racer:round_sequence race_and_battle set value [1,1,1,1,2]
data modify storage sprint_racer:round_sequence race set value [1,1,1,1]
data modify storage sprint_racer:round_sequence battle set value [2,2,2]

data modify storage sprint_racer:round_sequence custom set value [1,1,1,1,2]

data modify storage sprint_racer:round_sequence custom_save_1 set value [1,1,1,1,2]
data modify storage sprint_racer:round_sequence custom_save_2 set value [1,1,1,1,2]
data modify storage sprint_racer:round_sequence custom_save_3 set value [1,1,1,1,2]
data modify storage sprint_racer:round_sequence custom_save_4 set value [1,1,1,1,2]
data modify storage sprint_racer:round_sequence custom_save_5 set value [1,1,1,1,2]
data modify storage sprint_racer:round_sequence custom_save_6 set value [1,1,1,1,2]
data modify storage sprint_racer:round_sequence custom_save_7 set value [1,1,1,1,2]
data modify storage sprint_racer:round_sequence custom_save_8 set value [1,1,1,1,2]
data modify storage sprint_racer:round_sequence custom_save_9 set value [1,1,1,1,2]
data modify storage sprint_racer:round_sequence custom_save_10 set value [1,1,1,1,2]

execute as @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:game_logic/0/round_sequence/load_active_sequence