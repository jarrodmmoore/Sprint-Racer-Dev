tag @s add self2

tellraw @a[tag=self] ["",{text:" "}]
tellraw @a[tag=self] ["",{translate:"sr.game.injustice_is_served",color:"white",bold:true}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1..2}] unless entity @e[tag=anvilled,tag=!self2] run tellraw @a[tag=self] ["",{translate:"sr.game.anvil_target",color:"aqua",bold:true},{selector:"@e[tag=anvilled]"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=3}] unless entity @e[tag=anvilled,tag=!self2] run tellraw @a[tag=self] ["",{translate:"sr.game.anvil_target",color:"red",bold:true},{selector:"@e[tag=anvilled]"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1..2}] if entity @e[tag=anvilled,tag=!self2] run tellraw @a[tag=self] ["",{translate:"sr.game.anvil_targets",color:"aqua",bold:true},{selector:"@e[tag=anvilled]"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=3}] if entity @e[tag=anvilled,tag=!self2] run tellraw @a[tag=self] ["",{translate:"sr.game.anvil_targets",color:"red",bold:true},{selector:"@e[tag=anvilled]"}]
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1..3}] unless entity @e[tag=anvilled,tag=!self2] run tellraw @a[tag=self] ["",{translate:"sr.game.anvil_target",color:"white",bold:true},{selector:"@e[tag=anvilled]"}]
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1..3}] if entity @e[tag=anvilled,tag=!self2] run tellraw @a[tag=self] ["",{translate:"sr.game.anvil_targets",color:"white",bold:true},{selector:"@e[tag=anvilled]"}]
tellraw @a[tag=self] ["",{text:" "}]

tag @s remove self2