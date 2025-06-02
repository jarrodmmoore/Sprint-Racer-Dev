#make sure signs exist
setblock 1581 78 375 pale_oak_wall_sign[facing=east]{is_waxed:1b} keep
setblock 1581 78 374 pale_oak_wall_sign[facing=east]{is_waxed:1b} keep
setblock 1581 77 375 pale_oak_wall_sign[facing=east]{is_waxed:1b} keep
setblock 1581 77 374 pale_oak_wall_sign[facing=east]{is_waxed:1b} keep

setblock 1581 78 372 pale_oak_wall_sign[facing=east]{is_waxed:1b} keep
setblock 1581 78 371 pale_oak_wall_sign[facing=east]{is_waxed:1b} keep
setblock 1581 77 372 pale_oak_wall_sign[facing=east]{is_waxed:1b} keep
setblock 1581 77 371 pale_oak_wall_sign[facing=east]{is_waxed:1b} keep

setblock 1581 77 366 pale_oak_sign[rotation=12]{is_waxed:1b} keep

#clone the proper text onto the signs
data modify block 1581 78 375 front_text.messages set from block 1613 89 361 front_text.messages
data modify block 1581 78 374 front_text.messages set from block 1613 89 360 front_text.messages
data modify block 1581 77 375 front_text.messages set from block 1613 88 361 front_text.messages
data modify block 1581 77 374 front_text.messages set from block 1613 88 360 front_text.messages

data modify block 1581 78 372 front_text.messages set from block 1613 89 356 front_text.messages
data modify block 1581 78 371 front_text.messages set from block 1613 89 355 front_text.messages
data modify block 1581 77 372 front_text.messages set from block 1613 88 356 front_text.messages
data modify block 1581 77 371 front_text.messages set from block 1613 88 355 front_text.messages

data modify block 1581 77 366 front_text.messages set from block 1581 89 450 front_text.messages

#special case: two special signs that control the game type for race and battle
#race
setblock 1581 77 369 pale_oak_sign[rotation=12] keep
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetA=1}] run data merge block 1581 77 369 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1000"}},{text:"RACE TYPE",bold:true,color:"black"},{text:"[STANDARD]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetA=2}] run data merge block 1581 77 369 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1000"}},{text:"RACE TYPE",bold:true,color:"black"},{text:"[ELIMINATION]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetA=3}] run data merge block 1581 77 369 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1000"}},{text:"RACE TYPE",bold:true,color:"black"},{text:"[TACTICS]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=randomPresetA] run data merge block 1581 77 369 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1000"}},{text:"RACE TYPE",bold:true,color:"black"},{text:"[RANDOM]",color:"dark_blue"},{text:""}]},is_waxed:1b}
#battle
setblock 1581 77 368 pale_oak_sign[rotation=12] keep
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetB=1}] run data merge block 1581 77 368 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1001"}},{text:"BATTLE TYPE",bold:true,color:"black"},{text:"[KO-FEST]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetB=2}] run data merge block 1581 77 368 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1001"}},{text:"BATTLE TYPE",bold:true,color:"black"},{text:"[3-LIVES]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetB=3}] run data merge block 1581 77 368 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1001"}},{text:"BATTLE TYPE",bold:true,color:"black"},{text:"[R. CONTROL]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=randomPresetB] run data merge block 1581 77 368 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1001"}},{text:"BATTLE TYPE",bold:true,color:"black"},{text:"[RANDOM]",color:"dark_blue"},{text:""}]},is_waxed:1b}
