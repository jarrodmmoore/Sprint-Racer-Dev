tag @a[tag=hasTrackMap] remove hasTrackMap
tag @a[gamemode=!creative,tag=playing,nbt={Inventory:[{Slot:7b,id:"minecraft:filled_map",components:{"minecraft:custom_data":{trackMap:1b,rightclick:1b}}}]}] add hasTrackMap
clear @a[gamemode=!creative,tag=!hasTrackMap] filled_map

#MAP ZONES

#0..1 = lap 1 route
item replace entity @a[scores={mapZone=..1},gamemode=adventure,tag=!noInventory] hotbar.7 with minecraft:filled_map[map_id=649,custom_data={trackMap:1b,rightclick:1b}] 1

#2 = lap 2 route
item replace entity @a[scores={mapZone=2},gamemode=adventure,tag=!noInventory] hotbar.7 with minecraft:filled_map[map_id=650,custom_data={trackMap:1b,rightclick:1b}] 1


#3 = lap 3 route
item replace entity @a[scores={mapZone=3},gamemode=adventure,tag=!noInventory] hotbar.7 with minecraft:filled_map[map_id=651,custom_data={trackMap:1b,rightclick:1b}] 1


#4 = all routes
item replace entity @a[scores={mapZone=4},gamemode=adventure,tag=!noInventory] hotbar.7 with minecraft:filled_map[map_id=652,custom_data={trackMap:1b,rightclick:1b}] 1