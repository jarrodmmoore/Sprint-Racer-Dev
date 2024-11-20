tag @s remove musicDef
tag @s add musicSel

scoreboard players set @s afkTime 0

scoreboard players add @s BGMtrack 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms] if entity @s[scores={BGMtrack=22..}] run function sprint_racer:music/player/control_set_default
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms] if entity @s[scores={BGMtrack=37..}] run function sprint_racer:music/player/control_set_default

scoreboard players set @s musicTime 3