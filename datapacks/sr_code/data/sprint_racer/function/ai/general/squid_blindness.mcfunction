scoreboard players operation @s math = @e[limit=1,type=armor_stand,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..2}] rNumber
scoreboard players add @s[scores={math=1,aiSkill=..1}] aiRotOffset 20
scoreboard players add @s[scores={math=1,aiSkill=2}] aiRotOffset 10
scoreboard players add @s[scores={math=1,aiSkill=3..}] aiRotOffset 5
scoreboard players remove @s[scores={math=2,aiSkill=..1}] aiRotOffset 20
scoreboard players remove @s[scores={math=2,aiSkill=2}] aiRotOffset 10
scoreboard players remove @s[scores={math=2,aiSkill=3..}] aiRotOffset 5

scoreboard players set @s aiRotOSTime 4