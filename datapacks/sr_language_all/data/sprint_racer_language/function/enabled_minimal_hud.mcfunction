tellraw @s[tag=!minChat] ["",{text:"Minimal HUD mode enabled. During races your position will be displayed in the actionbar slot.",color:"white",italic:true}]
tag @s add miniHUD

execute at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 .8