#pick a random message to say
scoreboard players operation @s math = @e[limit=1,sort=random,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..16}] rNumber

#say something
execute if entity @s[scores={math=1}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.win.1"}]
execute if entity @s[scores={math=2}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.win.2"}]
execute if entity @s[scores={math=3}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.win.3"}]
execute if entity @s[scores={math=4}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.win.4"}]
execute if entity @s[scores={math=5}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.win.5"}]
execute if entity @s[scores={math=6}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.win.6"}]
execute if entity @s[scores={math=7}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.win.7"}]
execute if entity @s[scores={math=8}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.win.8"}]
execute if entity @s[scores={math=9}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.win.9"}]
execute if entity @s[scores={math=10}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.win.10"}]
execute if entity @s[scores={math=11}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.win.11"}]
execute if entity @s[scores={math=12}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.win.12"}]
execute if entity @s[scores={math=13}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.win.13"}]
execute if entity @s[scores={math=14}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.win.14"}]
execute if entity @s[scores={math=15}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.win.15"}]

execute if entity @s[scores={math=16}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> (∩♥ᗜ♥)⊃━☆ﾟ.*"}]