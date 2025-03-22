playsound minecraft:entity.villager.yes master @s ~ ~ ~ 2 1

#pick a random message to say
scoreboard players operation @s math = @e[limit=1,sort=random,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..15}] rNumber

#say something
execute if entity @s[scores={math=1}] run tellraw @s ["",{text:"<"},{text:"Villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.1"}]
execute if entity @s[scores={math=2}] run tellraw @s ["",{text:"<"},{text:"Villager",color:"gray"},{text:"> "},{translate:"sr.lobby.villager_tip.27a"}]
execute if entity @s[scores={math=3}] run tellraw @s ["",{text:"<"},{text:"Villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.3"}]
execute if entity @s[scores={math=4}] run tellraw @s ["",{text:"<"},{text:"Villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.4"}]
execute if entity @s[scores={math=5}] run tellraw @s ["",{text:"<"},{text:"Villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.5"}]

execute if entity @s[scores={math=6}] run tellraw @s ["",{text:"<"},{text:"Villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.6"}]
execute if entity @s[scores={math=7}] run tellraw @s ["",{text:"<"},{text:"Villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.7"}]
execute if entity @s[scores={math=8}] run tellraw @s ["",{text:"<"},{text:"Villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.8"}]
execute if entity @s[scores={math=9}] run tellraw @s ["",{text:"<"},{text:"Villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.9"}]
execute if entity @s[scores={math=10}] run tellraw @s ["",{text:"<"},{text:"Villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.10"}]

execute if entity @s[scores={math=11}] run tellraw @s ["",{text:"<"},{text:"Villager",color:"gray"},{text:"> "},{translate:"sr.lobby.villager_tip.27b"}]
execute if entity @s[scores={math=12}] run tellraw @s ["",{text:"<"},{text:"Villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.12"}]
execute if entity @s[scores={math=13}] run tellraw @s ["",{text:"<"},{text:"Villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.13"}]
execute if entity @s[scores={math=14}] run tellraw @s ["",{text:"<"},{text:"Villager",color:"gray"},{text:"> "},{translate:"sr.lobby.villager_tip.27c"}]
execute if entity @s[scores={math=15}] run tellraw @s ["",{text:"<"},{text:"Villager",color:"gray"},{text:"> "},{translate:"sr.villager.interact.15"}]