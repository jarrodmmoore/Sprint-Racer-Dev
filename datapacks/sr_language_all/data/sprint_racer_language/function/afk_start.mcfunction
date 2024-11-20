execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=0}] run tellraw @s[scores={subtitleDelay=..0}] ["",{"translate":"sr.become_idle","color":"light_purple","bold":false,"italic":true}]
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=0}] run tellraw @s ["",{"translate":"sr.become_idle","color":"light_purple","bold":false,"italic":true}]

tag @s add self
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1..3}] run tellraw @a[tag=!self] ["",{"selector":"@s"},{"translate":"sr.was_moved_to_spectator_mode"}]
tag @s remove self