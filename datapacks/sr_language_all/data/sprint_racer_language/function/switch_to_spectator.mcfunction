tellraw @s[tag=!minChat] ["",{"translate":"sr.you_are_now_a_spectator","color":"light_purple","italic":true}]

tag @s add self
execute if entity @e[tag=w,scores={gameState=1..3}] run tellraw @a[tag=!self,tag=!minChat] ["",{"selector":"@s"},{"translate":"sr.is_now_a_spectator"}]
tag @s remove self