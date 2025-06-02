#erase time attack data
setblock 1625 80 373 pale_oak_sign[rotation=8]
data merge block 1625 80 373 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1099"}},{text:"TIME ATTACK DATA",bold:true,color:"black"},{text:"[ERASE DATA]",color:"dark_red"},{text:""}]},is_waxed:1b}