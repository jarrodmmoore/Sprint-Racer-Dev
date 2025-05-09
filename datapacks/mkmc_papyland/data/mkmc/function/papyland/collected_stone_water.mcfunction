#say what happened
tellraw @a ["",{text:"The blue spiritual stone has been found!",color:"blue"}]

#remove item from wherever it might be
clear @a lapis_block
kill @e[type=item,tag=papyland_stone_water]

#set the blocks in the temple, both for visuals and logic checks
setblock 9475 37 -8484 lapis_block
setblock 9475 36 -8486 redstone_block