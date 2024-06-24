clear @s fire_charge[custom_data~{elite1:1b}] 1

#spawn fireball (item_display riding an armor stand)
summon armor_stand ~ ~1 ~ {Tags:["missile","aimMe","fireball"],Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["setLife"],item_display:"head",item:{id:"minecraft:magma_block",count:1b,components:{"custom_model_data":5555555}}}]}
execute at @s positioned ~ ~1.6 ~ as @e[type=armor_stand,tag=aimMe] run tp @s ~ ~ ~ ~ ~

execute if entity @s[tag=playerCyan] run tag @e[tag=aimMe,limit=1,sort=nearest] add itemCyan
scoreboard players operation @e[tag=aimMe] playerID = @s playerID
tag @e[tag=aimMe] remove aimMe

#rocket item_display is temporary
scoreboard players set @e[tag=setLife] lifespan 3
tag @e[tag=setLife] remove setLife

playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 1.5
particle flame ^ ^1.5 ^.5 0.2 0.2 0.2 .01 20

scoreboard players set @s inputCooldown 5