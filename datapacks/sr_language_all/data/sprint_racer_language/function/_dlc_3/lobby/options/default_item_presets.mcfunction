tellraw @a[tag=!minChat] ["",{text:" "}]

data merge block 1598 80 422 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1014"}},{text:"RESTORE",bold:true,color:"dark_blue"},{text:"DEFAULTS",bold:true,color:"dark_red"},{text:""}]},is_waxed:1b}


tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.restored_default_item_rules",color:"green"}]
playsound minecraft:block.note_block.hat master @a

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] itemPresetA 2
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] itemPresetB 6

function sprint_racer:game_logic/0/props/spawn_preview_chest_a
function sprint_racer:game_logic/0/props/spawn_preview_chest_b

tag @s remove clickSign