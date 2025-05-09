tag @a[tag=hasTrackMap] remove hasTrackMap
tag @a[gamemode=!creative,tag=playing,nbt={Inventory:[{Slot:7b,id:"minecraft:filled_map",components:{"minecraft:custom_data":{trackMap:1b,rightclick:1b}}}]}] add hasTrackMap
clear @a[gamemode=!creative,tag=!hasTrackMap] filled_map

#code borrowed by Space Colony Luna. Checks players checkpoint and gives them 1 of 3 minimaps
execute as @a[gamemode=adventure,tag=playing] run item replace entity @s[scores={check=0},gamemode=adventure,tag=!noInventory] hotbar.7 with minecraft:filled_map[map_id=148111,custom_data={trackMap:1b,rightclick:1b}] 1

execute as @a[gamemode=adventure,tag=playing] run item replace entity @s[scores={check=1},gamemode=adventure,tag=!noInventory] hotbar.7 with minecraft:filled_map[map_id=148112,custom_data={trackMap:1b,rightclick:1b}] 1

execute as @a[gamemode=adventure,tag=playing] run item replace entity @s[scores={check=2},gamemode=adventure,tag=!noInventory] hotbar.7 with minecraft:filled_map[map_id=148113,custom_data={trackMap:1b,rightclick:1b}] 1