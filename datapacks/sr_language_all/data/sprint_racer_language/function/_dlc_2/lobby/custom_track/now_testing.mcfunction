tellraw @a ["",{text:" "}]
tellraw @a ["",{translate:"sr.lobby.now_testing_track",color:"white"},{selector:"@e[limit=1,tag=focusT]"}]
tellraw @a ["",{translate:"sr.lobby.use_command_block_to_exit_1",italic:true,color:"gray"},{translate:"sr.lobby.use_command_block_to_exit_2",italic:true,color:"aqua"},{translate:"sr.lobby.use_command_block_to_exit_3",italic:true,color:"gray"}]
tellraw @a ["",{text:" "}]
execute as @a at @s run playsound minecraft:block.beacon.activate master @s ~ 100000 ~ 1000000 2