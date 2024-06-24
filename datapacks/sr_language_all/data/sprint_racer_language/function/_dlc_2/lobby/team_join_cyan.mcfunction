tellraw @s[tag=!minChat] ["",{"text":"■ ","color":"dark_aqua","italic":true},{"translate":"sr.lobby.joined_cyan_team","color":"dark_aqua","italic":true}]
playsound minecraft:block.note_block.flute master @s ~ ~ ~ 2 1.1
tag @s remove requestOrange
tag @s add requestCyan
tag @s remove playerOrange
tag @s add playerCyan