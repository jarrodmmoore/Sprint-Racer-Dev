execute if entity @s[type=!player] run function sprint_racer:damage_logic/damage_slowdown_ai

execute if entity @s[scores={damage=100..,crowdCooldown=..0}] if score grandprix gameState matches 1 at @s run function sprint_racer:grand_prix/crowd_gasp
execute if entity @s[scores={hp=..7,damage=20..,crowdCooldown=..0}] if score grandprix gameState matches 1 at @s run function sprint_racer:grand_prix/crowd_gasp

execute if entity @s[type=player,tag=!noSlow] run function sprint_racer:damage_logic/damage_slowdown_player

execute if entity @e[tag=25a,type=armor_stand,tag=cheats,x=1550,y=148,z=406,distance=..1] if entity @s[type=player,scores={attackerID=1..,hp=1..}] run kill @s

scoreboard players set @s[tag=noSlow] noScriptMoves 0
tag @s[tag=noSlow] remove noSlow

scoreboard players set @s speedBoost 0
scoreboard players set @s damage 0