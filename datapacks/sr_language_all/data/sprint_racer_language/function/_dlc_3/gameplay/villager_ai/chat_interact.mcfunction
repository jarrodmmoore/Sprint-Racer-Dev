#pick a random message to say
scoreboard players operation @s math = @e[limit=1,sort=random,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..15}] rNumber

#no talk if we're on cooldown
scoreboard players set @s[scores={inputCooldown=1..}] math 0

#say something
execute if entity @s[scores={math=1}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.1"}]
execute if entity @s[scores={math=2}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.2"}]
execute if entity @s[scores={math=3}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.3"}]
execute if entity @s[scores={math=4}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.4"}]
execute if entity @s[scores={math=5}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.5"}]
execute if entity @s[scores={math=6}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.6"}]
execute if entity @s[scores={math=7}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.7"}]
execute if entity @s[scores={math=8}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.8"}]
execute if entity @s[scores={math=9}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.9"}]
execute if entity @s[scores={math=10}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.10"}]
execute if entity @s[scores={math=11}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.11"}]
execute if entity @s[scores={math=12}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.12"}]
execute if entity @s[scores={math=13}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.13"}]
execute if entity @s[scores={math=14}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.14"}]
execute if entity @s[scores={math=15}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.15"}]

scoreboard players set @s inputCooldown 20
scoreboard players reset @s villagerTalk