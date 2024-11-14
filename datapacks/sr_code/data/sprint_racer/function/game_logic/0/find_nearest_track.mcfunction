#DEV
#summon armor_stand ~ ~-5 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["trackminimap"]}
#scoreboard players set @e[limit=1,sort=nearest,tag=trackminimap] worldmapID 0
#scoreboard players set @e[limit=1,sort=nearest,tag=wmPreview] worldmapID 0
#
#kill @e[type=armor_stand,tag=trackminimap]

tag @s add tempTarget

tag @s remove hasPreview
execute if entity @s[gamemode=!creative,tag=playing] if items entity @s container.* filled_map[custom_data~{wmPreview:1b}] run tag @s add hasPreview
clear @s[tag=!hasPreview] filled_map[custom_data~{wmPreview:1b}]
tag @s remove hasPreview

#get ID from the nearest trackminimap armor stand
scoreboard players operation @s worldmapID = @e[limit=1,sort=nearest,type=armor_stand,tag=trackminimap] worldmapID

#worldmapID is overridden is specific places
execute at @s if block ~ 0 ~ yellow_wool run function sprint_racer:worldmap/special_worldmap_override

tag @s add dataReturn
#execute as @e[limit=1,sort=nearest,type=armor_stand,tag=trackminimap] run function sprint_racer:game_logic/0/worldmap_index
#execute as @e[limit=1,sort=nearest,type=armor_stand,tag=trackminimap] run function sprint_racer:game_logic/6/worldmap_index_medals
function sprint_racer:game_logic/0/worldmap_index
function sprint_racer:game_logic/6/worldmap_index_medals
tag @s remove dataReturn



tag @e[tag=tempTarget] remove tempTarget