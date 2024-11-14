tellraw @s ["",{"text":"\uE075 You are currently AFK. Move around to become a player again.","color":"gray"}]
playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ .5 .75
scoreboard players set @s inputCooldown 30