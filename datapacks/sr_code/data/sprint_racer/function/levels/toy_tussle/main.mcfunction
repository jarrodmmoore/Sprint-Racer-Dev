function sprint_racer:levels/toy_tussle/map

#night vision
effect give @a night_vision 15 5 true

#damage if we touch coal blocks
execute as @a[gamemode=adventure,tag=playing] at @s if block ~ ~-.25 ~ coal_block run damage @s 1 wither at ~ ~-1 ~
execute as @e[tag=ai] at @s if block ~ ~-.25 ~ coal_block run damage @s 1 wither at ~ ~-1 ~

#die if we touch the ground while out of bounds
execute as @a[gamemode=adventure,tag=playing] at @s if block ~ 0 ~ red_wool unless block ~ 1 ~ magenta_wool if entity @s[nbt={OnGround:1b}] run kill @s
execute as @a[gamemode=adventure,scores={coord_y=..670000}] if entity @s[nbt={OnGround:1b}] run kill @s
execute as @e[tag=ai] at @s if block ~ 0 ~ red_wool if entity @s[nbt={OnGround:1b}] run function sprint_racer:ai/general/die

#non-coppa mode: put tanks on players heads!
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!COPPA,scores={gameTime=180..,gameState=3}] run function sprint_racer:levels/toy_tussle/tank_mode
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!COPPA,scores={gameTime=180..,gameState=8}] run function sprint_racer:levels/toy_tussle/tank_mode