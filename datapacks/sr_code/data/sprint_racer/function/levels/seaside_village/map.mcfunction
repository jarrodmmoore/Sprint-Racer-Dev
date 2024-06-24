tag @a[tag=hasTrackMap] remove hasTrackMap
tag @a[gamemode=!creative,tag=playing,nbt={Inventory:[{Slot:7b,id:"minecraft:filled_map",components:{"minecraft:custom_data":{trackMap:1b,rightclick:1b}}}]}] add hasTrackMap
clear @a[gamemode=!creative,tag=!hasTrackMap] filled_map

#MAP ZONES

#0 = above ground
item replace entity @a[scores={mapZone=..0},gamemode=adventure,tag=!noInventory] hotbar.7 with minecraft:filled_map[map_id=56,custom_data={trackMap:1b,rightclick:1b}] 1

#1 = underwater tunnels
item replace entity @a[scores={mapZone=1..},gamemode=adventure,tag=!noInventory] hotbar.7 with minecraft:filled_map[map_id=176,custom_data={trackMap:1b,rightclick:1b}] 1