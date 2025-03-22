#run by "w"
scoreboard players operation @s math2 = @s gpNumber
scoreboard players add @s math2 1

execute if entity @s[scores={gpNumber=..49}] run title @a[tag=playing,scores={subtitleDelay=..0}] subtitle ["",{translate:"sr.grand_prix.setting_round",color:"white"},{text:"#",color:"gold"},{score:{name:"@s",objective:"math2"},color:"gold"}]
execute if entity @s[scores={gpNumber=50..}] run title @a[tag=playing,scores={subtitleDelay=..0}] subtitle ["",{translate:"sr.grand_prix.round_limit_reached",color:"red"}]
title @a title [""]