function sprint_racer:levels/mountain_park/map

#map zones
execute as @a[gamemode=adventure,scores={lapFake=..1,check=..0}] at @s if block ~ 1 ~ white_wool run scoreboard players set @s mapZone 1
scoreboard players set @a[gamemode=adventure,scores={lapFake=2..,check=..1,mapZone=2..}] mapZone 1
scoreboard players set @a[gamemode=adventure,scores={check=2..,mapZone=..1}] mapZone 2

#respawn in the mountain cave pond
execute as @a[gamemode=adventure,x=596,y=80,z=-1656,dx=13,dy=10,dz=13,scores={check=0}] at @s if block ~ ~ ~ water run function sprint_racer:levels/mountain_park/respawn1

#dark HUD at certain spots
execute as @a[tag=darkHUD,gamemode=adventure,scores={check=..2}] at @s unless block ~ -1 ~ white_wool run tag @s remove darkHUD
execute as @a[tag=!darkHUD,gamemode=adventure,scores={check=..2}] at @s if block ~ -1 ~ white_wool run tag @s add darkHUD
execute as @a[tag=darkHUD,gamemode=adventure,scores={check=3}] at @s unless block ~ -2 ~ white_wool run tag @s remove darkHUD
execute as @a[tag=!darkHUD,gamemode=adventure,scores={check=3}] at @s if block ~ -2 ~ white_wool run tag @s add darkHUD
execute as @a[tag=darkHUD,gamemode=adventure,scores={check=4..}] at @s unless block ~ -3 ~ white_wool run tag @s remove darkHUD
execute as @a[tag=!darkHUD,gamemode=adventure,scores={check=4..}] at @s if block ~ -3 ~ white_wool run tag @s add darkHUD