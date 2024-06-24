#cheat armor stand
kill @e[tag=cheats]
execute unless entity @e[tag=cheats] run summon armor_stand 1550 148 406 {Tags:["cheats"],CustomName:'{"text":"cheats"}',NoGravity:1,Invisible:1,Invulnerable:1,Marker:1b}
kill @e[tag=cheattext]

tag @e[type=armor_stand,tag=random,scores={rNumber=37}] add rtBlacklist
tag @e[type=armor_stand,tag=random,scores={rNumber=50}] add rtBlacklist
tag @e[type=armor_stand,tag=random,scores={rNumber=50}] add btBlacklist

setblock 1594 101 448 air

scoreboard players set #cheatMusic value 0