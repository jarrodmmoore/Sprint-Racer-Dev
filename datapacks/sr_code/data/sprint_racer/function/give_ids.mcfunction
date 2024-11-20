scoreboard players reset * playerID
scoreboard players set @a playerID 0

#every active player is given a unique ID
#spectators get ID of 0 which is null
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerID 2
execute as @a[tag=playing] run function sprint_racer:give_ids2

#misc scoreboard fixes JUST TO MAKE SURE EVERYTHING IS OKAY
scoreboard players set @a speedBoost 0
scoreboard players set @a inputCooldown 0
scoreboard players set @a projectileSafe 0
scoreboard players set @a nResist 0
scoreboard players set @a resistTime 0
scoreboard players set @a resTimer 0
scoreboard players set @a invulTime 0
scoreboard players set @a invulTimer 0
scoreboard players set @a invisibility 0
scoreboard players set @a invisTimer 0
scoreboard players set @a elytraState 0
scoreboard players set @a elytraTimer 0
scoreboard players set @a lightningSafe 0
scoreboard players set @a resetCooldown 0
scoreboard players set @a inputCooldown 0