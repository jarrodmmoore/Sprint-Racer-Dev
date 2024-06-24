tellraw @s[tag=!minChat] ["",{"text":"■ ","color":"gold","italic":true},{"translate":"sr.lobby.joined_orange_team","color":"gold","italic":true}]
playsound minecraft:block.note_block.flute master @s ~ ~ ~ 2 1.2
tag @s add requestOrange
tag @s remove requestCyan
tag @s add playerOrange
tag @s remove playerCyan