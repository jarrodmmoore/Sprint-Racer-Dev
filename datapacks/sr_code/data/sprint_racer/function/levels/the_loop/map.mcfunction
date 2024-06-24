tag @a[tag=hasTrackMap] remove hasTrackMap
tag @a[gamemode=!creative,tag=playing,nbt={Inventory:[{Slot:7b,id:"minecraft:filled_map",components:{"minecraft:custom_data":{trackMap:1b,rightclick:1b}}}]}] add hasTrackMap
clear @a[gamemode=!creative,tag=!hasTrackMap] filled_map
item replace entity @a[gamemode=adventure,tag=!hasTrackMap,tag=!noInventory] hotbar.7 with minecraft:filled_map[map_id=268,custom_data={trackMap:1b,rightclick:1b}] 1

#loop center x=-589 z=145, map 268
#greenhouse center x=-338, z=-383, map 269