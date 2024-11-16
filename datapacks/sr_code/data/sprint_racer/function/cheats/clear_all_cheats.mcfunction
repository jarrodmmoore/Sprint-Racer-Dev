#cheat armor stand
kill @e[tag=cheats,x=1550,y=148,z=406,distance=..1]
execute unless entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1] run summon armor_stand 1550 148 406 {Tags:["cheats"],CustomName:'{"text":"cheats"}',NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
kill @e[tag=cheattext]

tag @e[type=armor_stand,tag=random,scores={rNumber=37}] add rtBlacklist
tag @e[type=armor_stand,tag=random,scores={rNumber=50}] add rtBlacklist
tag @e[type=armor_stand,tag=random,scores={rNumber=50}] add btBlacklist

setblock 1594 101 448 air

scoreboard players set #cheatMusic value 0