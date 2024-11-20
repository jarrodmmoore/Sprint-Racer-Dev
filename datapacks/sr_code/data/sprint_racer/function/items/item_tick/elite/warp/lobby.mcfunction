tag @s remove gotWarped
tag @s add self

execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=09a] run tag @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] add ejectkart

tag @e[limit=1,sort=random,tag=!self,gamemode=!spectator] add warpTarget
execute if entity @e[tag=warpTarget] run tag @s add gotWarped
execute if entity @e[tag=warpTarget] run function sprint_racer:items/item_tick/elite/warp/sound_effect
execute if entity @e[tag=warpTarget] run tp @s @e[limit=1,tag=warpTarget]
tag @e[tag=warpTarget] remove warpTarget

#execute unless entity @s[tag=gotWarped] run function sprint_racer_language:gameplay/misc_item_text/error_warp_failed_battle
#execute unless entity @s[tag=gotWarped] run function sprint_racer_language:gameplay/give_item/elite11
execute unless entity @s[tag=gotWarped] run tp @s @e[limit=1,sort=random,tag=node,tag=lobbyprop,tag=itemchest]

execute if entity @s[tag=gotWarped,scores={anvil=..999}] run tag @s add dodge

effect clear @s night_vision

tag @s remove self
tag @s remove gotWarped