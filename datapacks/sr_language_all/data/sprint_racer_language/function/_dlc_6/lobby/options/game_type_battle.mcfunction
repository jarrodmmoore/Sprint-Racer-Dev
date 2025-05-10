scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=randomPresetB,scores={gamemodePresetB=3..}] gamemodePresetB 0
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gamemodePresetB=..2}] remove randomPresetB
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gamemodePresetB=3..}] add randomPresetB
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!randomPresetB] gamemodePresetB 1

playsound minecraft:block.note_block.hat master @a

#update custom track manager signs
function sprint_racer:game_logic/10/clone_sign_data

tag @s remove clickSign