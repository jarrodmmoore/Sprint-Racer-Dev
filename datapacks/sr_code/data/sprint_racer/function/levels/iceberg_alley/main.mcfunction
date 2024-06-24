function sprint_racer:levels/iceberg_alley/map

#effect give @a night_vision 15 1 true

kill @a[tag=playing,gamemode=adventure,x=770,y=30,z=1332,dx=40,dy=25,dz=120,scores={hp=1..},nbt={OnGround:1b}]

#tag @e[tag=darkHUD] remove darkHUD
#execute as @a at @s if block ~ ~ ~ snow run tag @s add darkHUD
#execute as @a at @s if block ~ ~-1 ~ snow run tag @s add darkHUD
#execute as @a at @s if block ~ ~-1 ~ snow_block run tag @s add darkHUD
#execute as @a at @s if block ~ ~-2 ~ snow_block run tag @s add darkHUD