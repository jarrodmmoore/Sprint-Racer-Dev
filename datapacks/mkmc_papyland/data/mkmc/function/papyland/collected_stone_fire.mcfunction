#say what happened
tellraw @a ["",{text:"The red spiritual stone has been found!",color:"red"}]

#remove item from wherever it might be
clear @a redstone_block
kill @e[type=item,tag=papyland_stone_fire]

#set the blocks in the temple, both for visuals and logic checks
setblock 9479 37 -8484 redstone_block
setblock 9479 36 -8486 redstone_block