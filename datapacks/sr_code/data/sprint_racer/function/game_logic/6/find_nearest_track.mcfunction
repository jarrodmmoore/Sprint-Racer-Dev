#DEV
#summon armor_stand ~ ~-5 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["trackminimap"]}
#scoreboard players set @e[limit=1,sort=nearest,tag=trackminimap] worldmapID 0
#scoreboard players set @e[limit=1,sort=nearest,tag=wmPreview] worldmapID 0
#
#kill @e[type=armor_stand,tag=trackminimap]

tag @s add tempTarget

tag @s remove hasPreview
tag @a[gamemode=!creative,tag=playing,nbt={Inventory:[{Slot:0b,id:"minecraft:filled_map",components:{"minecraft:custom_data":{wmPreview:1b}}}]}] add hasPreview
clear @s[tag=!hasPreview] filled_map
tag @s remove hasPreview

execute as @e[limit=1,sort=nearest,type=armor_stand,tag=trackminimap] run function sprint_racer:game_logic/0/worldmap_index

tag @a[tag=tempTarget] remove tempTarget