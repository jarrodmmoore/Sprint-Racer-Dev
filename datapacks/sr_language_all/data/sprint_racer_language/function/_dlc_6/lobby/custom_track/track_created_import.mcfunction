tellraw @a ["",{"text":" "}]
$tellraw @a ["",$(track_name)]
$tellraw @a ["",{"translate":"sr.custom_track.import_success","color":"green","with":[{"text":"command_storage_$(file_name).dat","color":"white"}]}]
execute if score global gameState matches 10 as @a at @s run playsound minecraft:ui.stonecutter.take_result master @s ~ 10000 ~ 10000 1.7

#warn about version if track was intended for a later version of sprint racer
execute if score #version_needs_warning value matches 0.. if score @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] mapVersion <= #version_needs_warning value run tellraw @a ["",{"translate":"sr.custom_track.imported_track_might_be_outdated","color":"red","bold":true}]

#tellraw @a ["",{"text":" "}]