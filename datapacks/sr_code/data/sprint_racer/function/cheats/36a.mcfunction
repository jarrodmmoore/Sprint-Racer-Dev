#make sure everyone's got their stick
tag @a remove cheatStick
tag @a[nbt={Inventory:[{id:"minecraft:stick"}]}] add cheatStick

execute as @a[gamemode=adventure,tag=!noInventory,tag=!cheatStick] run function sprint_racer_language:_dlc_2/cheats/give_stick

tag @a remove cheatStick