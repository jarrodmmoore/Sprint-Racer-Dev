tellraw @a[tag=!minChat] ["",{text:" "}]

#toggle RAIautocount on/off
execute store result score #test value run execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=RAIautocount,limit=1]
execute if score #test value matches ..0 run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add RAIautocount
execute if score #test value matches 1.. run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove RAIautocount

#sign
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=RAIautocount] run data merge block 1613 88 360 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1045"}},{text:"PLAYER COUNT",bold:true,color:"black"},{text:"[MEET]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!RAIautocount] run data merge block 1613 88 360 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1045"}},{text:"PLAYER COUNT",bold:true,color:"black"},{text:"[ADD TO]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#feedback text
execute if score #test value matches ..0 run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.race_ai_mode_meet",color:"green"}]
execute if score #test value matches 1.. run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.race_ai_mode_add",color:"green"}]

#sound
playsound minecraft:block.note_block.hat master @a

#update zombies
function sprint_racer:game_logic/0/props/update_jail_zombies

#update custom track manager signs
function sprint_racer:game_logic/10/clone_sign_data

tag @s remove clickSign