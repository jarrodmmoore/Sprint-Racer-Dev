scoreboard players set @s inputCooldown 40

tellraw @s ["",{translate:"sr.lobby.must_be_admin_to_do_this",color:"red",bold:true}]
execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8