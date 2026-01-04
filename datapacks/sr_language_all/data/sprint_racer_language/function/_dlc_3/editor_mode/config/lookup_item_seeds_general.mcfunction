#should supply #math as argument
execute unless score #math value matches 1.. run data modify storage sprint_racer:item_name lookup set value {translate:"sr.item_spawner.follow_item_rule"}
execute if score #math value matches 1.. run data modify storage sprint_racer:item_name lookup set value {translate:"sr.inventory.none"}

#base items, re-use the other function...
execute if score #math value matches 1..49 run return run function sprint_racer_language:_dlc_3/editor_mode/config/lookup_item_seeds_timeattack

#can ask the map to spawn any built-in chest type if you want
execute if score #math value matches 50 run return run data modify storage sprint_racer:item_name lookup set value {color:white,translate:"sr.item_spawner.brown_chest"}
execute if score #math value matches 51 run return run data modify storage sprint_racer:item_name lookup set value {color:white,translate:"sr.item_spawner.capsule"}
execute if score #math value matches 52 run return run data modify storage sprint_racer:item_name lookup set value {color:white,translate:"sr.item_spawner.ender_chest"}
execute if score #math value matches 53 run return run data modify storage sprint_racer:item_name lookup set value {color:white,translate:"sr.item_spawner.specialty.random"}
execute if score #math value matches 54 run return run data modify storage sprint_racer:item_name lookup set value {color:red,translate:"sr.item_spawner.specialty.offense"}
execute if score #math value matches 55 run return run data modify storage sprint_racer:item_name lookup set value {color:yellow,translate:"sr.item_spawner.specialty.defense"}
execute if score #math value matches 56 run return run data modify storage sprint_racer:item_name lookup set value {color:aqua,translate:"sr.item_spawner.specialty.speed"}
execute if score #math value matches 57 run return run data modify storage sprint_racer:item_name lookup set value {color:green,translate:"sr.item_spawner.specialty.trap"}
execute if score #math value matches 58 run return run data modify storage sprint_racer:item_name lookup set value {color:light_purple,translate:"sr.item_spawner.specialty.global"}


#custom
execute if score #math value matches 61..99 run return run data modify storage sprint_racer:item_name lookup set value {color:white,translate:"sr.item_spawner.custom_capsule"}
execute if score #math value matches 100.. run return run data modify storage sprint_racer:item_name lookup set value {color:white,translate:"sr.item_spawner.custom_no_capsule"}
