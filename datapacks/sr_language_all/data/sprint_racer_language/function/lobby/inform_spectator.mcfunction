tellraw @s ["",{"translate":"sr.lobby.currently_a_spectator","color":"light_purple"}]
playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ .5 .75
scoreboard players set @s inputCooldown 30