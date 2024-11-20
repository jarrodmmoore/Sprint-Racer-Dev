execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=09a] if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] at @s as @e[limit=1,sort=nearest,tag=playerkart] run function sprint_racer:cheats/kart_burst

#go back to where we inititally hit the checkpoint
tag @s add takeItFromHere
function sprint_racer:warp_to_saved_coords/_go
tag @s remove takeItFromHere
tag @s remove foundCP

#this feature is kinda nice, but I had to disable it since it would cause problems if checkpoints were missed
#execute if entity @s[scores={lastTeleport=1..25}] run function sprint_racer:game_logic/1/respawn_at_teleporter

execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=noCharity] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banNo10] run function sprint_racer:game_logic/1/charity_item/_index
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=customTesting] run function sprint_racer:game_logic/10/respawn_detect

scoreboard players set @s hitstun 0
scoreboard players set @s moveSpeed 0
scoreboard players set @s raceAccel 10
scoreboard players set @s rateDecel 500
scoreboard players reset @s burn
scoreboard players reset @s electrocute
scoreboard players reset @s anvil

scoreboard players reset @s death