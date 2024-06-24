tellraw @s ["",{"translate":"sr.error.need_admin_tag_1","color":"red","bold":true},{"text":"\"","color":"red","bold":false},{"text":"admin","color":"red","bold":true},{"text":"\"","color":"red","bold":false},{"translate":"sr.error.need_admin_tag_2","color":"red","bold":true}]
execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

tag @s remove clickSign