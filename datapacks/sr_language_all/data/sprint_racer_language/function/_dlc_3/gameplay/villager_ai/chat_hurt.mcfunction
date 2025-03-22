#pick a random message to say
scoreboard players operation @s math = @e[limit=1,sort=random,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..50}] rNumber

#sound
execute at @s run playsound minecraft:entity.villager.no master @a ~ ~ ~ 1.2 1.2

#say something
execute if entity @s[scores={math=1}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.hurt.1"}]
execute if entity @s[scores={math=2}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.hurt.2"}]
execute if entity @s[scores={math=3}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.hurt.3"}]
execute if entity @s[scores={math=4}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.hurt.4"}]
execute if entity @s[scores={math=5}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.hurt.5"}]
execute if entity @s[scores={math=6}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.hurt.6"}]
execute if entity @s[scores={math=7}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.hurt.7"}]
execute if entity @s[scores={math=8}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.hurt.8"}]
execute if entity @s[scores={math=9}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.hurt.9"}]
execute if entity @s[scores={math=10}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.hurt.10"}]
execute if entity @s[scores={math=11}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.hurt.11"}]
execute if entity @s[scores={math=12}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.hurt.12"}]
execute if entity @s[scores={math=13}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.hurt.13"}]
execute if entity @s[scores={math=14}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.hurt.14"}]
execute if entity @s[scores={math=15}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.hurt.15"}]
