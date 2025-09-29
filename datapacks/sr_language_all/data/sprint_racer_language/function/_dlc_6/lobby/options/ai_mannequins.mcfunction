tellraw @a[tag=!minChat] ["",{text:" "}]

#toggle noAIrival on/off
execute store result score #test value run execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optMannequinAI,limit=1]
execute if score #test value matches ..0 run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optMannequinAI
execute if score #test value matches 1.. run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optMannequinAI

#sign
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!optMannequinAI] run data merge block 1617 88 368 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1050"}},{text:"AI PLAYERS",bold:true,color:"white"},{text:"[ZOMBIES]",color:"aqua"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optMannequinAI] run data merge block 1617 88 368 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1050"}},{text:"AI PLAYERS",bold:true,color:"white"},{text:"[MANNEQUINS]",color:"aqua"},{text:""}]},is_waxed:1b}

#feedback text
execute if score #test value matches ..0 run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.ai_mannequins_on",color:"green"}]
execute if score #test value matches 1.. run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.ai_mannequins_off",color:"green"}]

#sound
playsound minecraft:block.note_block.hat master @a

tag @s remove clickSign


#only do this last part while lobby is active
execute unless entity @a run return 1
#=====

kill @e[tag=lobbyprop,tag=jailz1]
kill @e[tag=lobbyprop,tag=jailz2]
function sprint_racer:game_logic/0/props/update_jail_zombies