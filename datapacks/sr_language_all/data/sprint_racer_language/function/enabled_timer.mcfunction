tellraw @s[tag=!minChat] ["",{text:"Your actionbar will show your time during races.",color:"yellow",italic:true}]
tag @s remove miniHUD

execute at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1