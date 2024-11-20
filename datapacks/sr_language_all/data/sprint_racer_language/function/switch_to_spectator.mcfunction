tellraw @s[tag=!minChat] ["",{"translate":"sr.you_are_now_a_spectator","color":"light_purple","italic":true}]

tag @s add self
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1..3}] run tellraw @a[tag=!self,tag=!minChat] ["",{"selector":"@s"},{"translate":"sr.is_now_a_spectator"}]
tag @s remove self