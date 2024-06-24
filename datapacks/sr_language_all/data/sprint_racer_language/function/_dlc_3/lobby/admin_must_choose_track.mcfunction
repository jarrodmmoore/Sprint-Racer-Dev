scoreboard players set @s inputCooldown 40

tellraw @s ["",{"translate":"sr.lobby.admins_will_choose_track","color":"red","bold":true}]
execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8