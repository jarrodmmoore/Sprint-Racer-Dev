tag @a[tag=hasTrackMap] remove hasTrackMap
tag @a[gamemode=!creative,tag=playing,nbt={Inventory:[{Slot:7b,id:"minecraft:filled_map",components:{"minecraft:custom_data":{trackMap:1b,rightclick:1b}}}]}] add hasTrackMap
clear @a[gamemode=!creative,tag=!hasTrackMap] filled_map

#MAP ZONES

#0 = building exterior
item replace entity @a[scores={mapZone=..0},gamemode=adventure,tag=!noInventory] hotbar.7 with minecraft:filled_map[map_id=173,custom_data={trackMap:1b,rightclick:1b}] 1

#1 = path 1
item replace entity @a[scores={mapZone=1},gamemode=adventure,tag=!noInventory] hotbar.7 with minecraft:filled_map[map_id=174,custom_data={trackMap:1b,rightclick:1b}] 1


#2 = path 2
item replace entity @a[scores={mapZone=2},gamemode=adventure,tag=!noInventory] hotbar.7 with minecraft:filled_map[map_id=170,custom_data={trackMap:1b,rightclick:1b}] 1


#3 = path 3
item replace entity @a[scores={mapZone=3},gamemode=adventure,tag=!noInventory] hotbar.7 with minecraft:filled_map[map_id=171,custom_data={trackMap:1b,rightclick:1b}] 1


#4 = path 3 but panned downward for visibility
item replace entity @a[scores={mapZone=4},gamemode=adventure,tag=!noInventory] hotbar.7 with minecraft:filled_map[map_id=172,custom_data={trackMap:1b,rightclick:1b}] 1


#5 = secret path???
item replace entity @a[scores={mapZone=5},gamemode=adventure,tag=!noInventory] hotbar.7 with minecraft:filled_map[map_id=173,custom_data={trackMap:1b,rightclick:1b}] 1