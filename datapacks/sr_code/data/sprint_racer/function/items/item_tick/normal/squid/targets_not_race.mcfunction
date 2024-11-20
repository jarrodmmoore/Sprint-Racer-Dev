#don't blind teammates
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay] if entity @s[tag=playerOrange] run tag @e[tag=playerOrange] add noSquid
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay] if entity @s[tag=playerCyan] run tag @e[tag=playerCyan] add noSquid

#blind up to 5 players, nearest first
tag @s add self
execute at @s run tag @e[limit=5,sort=nearest,tag=activeplayer,tag=!self,tag=!noSquid] add squidTarget
tag @s remove self

tag @e[tag=noSquid] remove noSquid