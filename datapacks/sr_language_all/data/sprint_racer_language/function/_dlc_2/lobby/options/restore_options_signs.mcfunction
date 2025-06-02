#difficulty ramp
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={difficultyRamp=1..}] run data merge block 1588 89 453 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1009"}},{text:"DIFFICULTY",bold:true,color:"black"},{text:"RAMP-UP",bold:true,color:"black"},{text:"[ON]",color:"dark_blue"}]},is_waxed:1b}
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={difficultyRamp=1..}] run data merge block 1588 89 453 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1009"}},{text:"DIFFICULTY",bold:true,color:"black"},{text:"RAMP-UP",bold:true,color:"black"},{text:"[OFF]",color:"dark_blue"}]},is_waxed:1b}

#endless mode
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!endlessMode] run data merge block 1592 89 456 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1011"}},{text:"ENDLESS MODE",bold:true,color:"black"},{text:"[OFF]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=endlessMode] run data merge block 1592 89 456 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1011"}},{text:"ENDLESS MODE",bold:true,color:"black"},{text:"[ON]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#reset cheats
data merge block 1631 87 438 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1010"}},{text:"CHEATS",bold:true,color:"black"},{text:"[DISABLE ALL]",color:"dark_red"},{text:""}]},is_waxed:1b}