tag @a[tag=hasTrackMap] remove hasTrackMap
tag @a[gamemode=!creative,tag=playing,nbt={Inventory:[{Slot:8b,id:"minecraft:filled_map",components:{"minecraft:custom_data":{trackMap:1b,rightclick:1b}}}]}] add hasTrackMap
clear @a[gamemode=!creative,tag=!hasTrackMap] filled_map
item replace entity @a[gamemode=adventure,tag=!hasTrackMap,tag=!noInventory] hotbar.8 with minecraft:filled_map[map_id=339,custom_data={trackMap:1b,rightclick:1b}] 1