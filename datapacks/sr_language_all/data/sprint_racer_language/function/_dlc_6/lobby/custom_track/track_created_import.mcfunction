tellraw @a ["",{"text":" "}]
$tellraw @a ["",$(track_name)]
$tellraw @a ["",{"translate":"sr.custom_track.import_success","color":"green","with":[{"text":"command_storage_$(file_name).dat","color":"white"}]}]
execute if score global gameState matches 10 as @a at @s run playsound minecraft:ui.stonecutter.take_result master @s ~ 10000 ~ 10000 1.7
tellraw @a ["",{"text":" "}]