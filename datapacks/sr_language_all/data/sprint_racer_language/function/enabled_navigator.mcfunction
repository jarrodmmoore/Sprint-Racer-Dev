tellraw @s[tag=!minChat] ["",{"text":"Your actionbar will show you an arrow to help navigate during races.","color":"gray","italic":true}]
tag @s remove miniHUD

execute at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1