tag @a[tag=hasTrackMap] remove hasTrackMap
tag @a[gamemode=!creative,tag=playing,nbt={Inventory:[{Slot:7b,id:"minecraft:filled_map",components:{"minecraft:custom_data":{trackMap:1b,rightclick:1b}}}]}] add hasTrackMap
clear @a[gamemode=!creative,tag=!hasTrackMap] filled_map
item replace entity @a[gamemode=adventure,tag=!noInventory] hotbar.7 with minecraft:filled_map[map_id=52,custom_data={trackMap:1b,rightclick:1b}] 1

#"map:52" is River Valley's overhead map. Change it to whatever you want.

#Make sure you're using a number that corresponds to a map.dat that already exists in the world's "data" folder!
#If you don't, Minecraft will generate garbage maps 20 times per second, which will erase many of the map.dat files Sprint Racer needs.

#Pro tip: You can use NBTExplorer to change the center point and zoom of your map.dat file.


#In battle mode, the map item is put in slot 8 instead of 7. So that means you'd have to do:
# "slot:7b" -> "slot:8b"
# "hotbar.7" -> "hotbar.8"