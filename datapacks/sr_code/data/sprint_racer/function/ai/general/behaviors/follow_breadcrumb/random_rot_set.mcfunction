scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..5}] rNumber
scoreboard players set @s[scores={aiSkill=3..}] rNumber 3
scoreboard players set @s[scores={aiSkill=2,rNumber=..1}] rNumber 3
scoreboard players set @s[scores={aiSkill=2,rNumber=5..}] rNumber 3

scoreboard players set @s rotSet 0
scoreboard players set @s[scores={rNumber=1}] rotSet -20
scoreboard players set @s[scores={rNumber=2}] rotSet -10
scoreboard players set @s[scores={rNumber=4}] rotSet 10
scoreboard players set @s[scores={rNumber=5}] rotSet 20