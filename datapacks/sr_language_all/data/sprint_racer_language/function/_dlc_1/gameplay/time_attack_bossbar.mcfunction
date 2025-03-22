bossbar set minecraft:freeroam name ["",{translate:"sr.lobby.time_attack_select_a_track",color:"yellow",bold:true}]
bossbar set freeroam color yellow
bossbar set freeroam max 1
bossbar set freeroam style progress
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math 1
execute store result bossbar minecraft:freeroam value run scoreboard players get @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] math