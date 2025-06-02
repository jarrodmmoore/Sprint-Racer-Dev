tellraw @a[tag=!minChat] ["",{text:" "}]

#toggle noAIrival on/off
execute store result score #test value run execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=noAIrival,limit=1]
execute if score #test value matches ..0 run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add noAIrival
execute if score #test value matches 1.. run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove noAIrival

#sign
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!noAIrival] run data merge block 1615 89 353 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1048"}},{text:"RIVAL AI",bold:true,color:"black"},{text:"[ON]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=noAIrival] run data merge block 1615 89 353 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1048"}},{text:"RIVAL AI",bold:true,color:"black"},{text:"[OFF]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#feedback text
execute if score #test value matches ..0 run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.ai_rival_off",color:"green"}]
execute if score #test value matches 1.. run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.ai_rival_on",color:"green"}]

#sound
playsound minecraft:block.note_block.hat master @a

tag @s remove clickSign