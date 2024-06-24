scoreboard players operation @s BGMtrack = @e[limit=1,type=armor_stand,tag=currentBGM] rNumber
execute unless entity @e[limit=1,type=armor_stand,tag=currentBGM] run scoreboard players set @s[tag=musicDef] BGMtrack 0

stopsound @s[scores={BGMtrack=..0}] record
stopsound @s[scores={BGMtrack=19..}] record
scoreboard players set @s musicTime 3

tag @s add musicDef
tag @s remove musicSel