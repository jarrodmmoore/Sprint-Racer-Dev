tellraw @a[tag=!minChat] ["",{text:" "}]

#toggle noAIrival on/off
execute store result score #test value run execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optNoLocatorBar,limit=1]
execute if score #test value matches ..0 run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optNoLocatorBar
execute if score #test value matches 1.. run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optNoLocatorBar

#sign
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!optNoLocatorBar] run data merge block 1609 81 369 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1049"}},{text:"LOCATOR BAR",bold:true,color:"black"},{text:"[ON]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optNoLocatorBar] run data merge block 1609 81 369 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1049"}},{text:"LOCATOR BAR",bold:true,color:"black"},{text:"[OFF]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#feedback text
execute if score #test value matches ..0 run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.locator_bar_off",color:"green"}]
execute if score #test value matches 1.. run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.locator_bar_on",color:"green"}]

#sound
playsound minecraft:block.note_block.hat master @a

tag @s remove clickSign