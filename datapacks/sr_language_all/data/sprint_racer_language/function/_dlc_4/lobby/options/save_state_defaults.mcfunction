execute as @a at @s run playsound minecraft:block.note_block.hat master @s
tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.save_state.restored_all_defaults","color":"yellow"}]

execute unless score global gameState matches 0 run scoreboard players set #noLobbyReload value 1
execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] positioned 1627 70 460 run function sprint_racer:game_logic/0/save_state/load_block_state