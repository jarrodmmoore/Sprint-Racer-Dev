execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=09a] if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] at @s as @e[limit=1,sort=nearest,tag=playerkart] run function sprint_racer:cheats/kart_burst

tp @s @e[limit=1,sort=nearest,tag=playerstart,tag=psBattle]

scoreboard players set @s hitstun 0
scoreboard players set @s moveSpeed 0
scoreboard players set @s raceAccel 10
scoreboard players set @s rateDecel 500
scoreboard players reset @s burn
scoreboard players reset @s electrocute
scoreboard players reset @s anvil

scoreboard players reset @s death

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=customTesting] run function sprint_racer:game_logic/10/respawn_detect