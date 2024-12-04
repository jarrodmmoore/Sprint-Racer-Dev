execute at @s run particle flash ~ ~1 ~ 0 0 0 1 1 force

execute if entity @s[tag=ai1] run tag @e[tag=AImaster,scores={rNumber=1}] add AIdaddy
execute if entity @s[tag=ai2] run tag @e[tag=AImaster,scores={rNumber=2}] add AIdaddy
execute if entity @s[tag=ai3] run tag @e[tag=AImaster,scores={rNumber=3}] add AIdaddy
execute if entity @s[tag=ai4] run tag @e[tag=AImaster,scores={rNumber=4}] add AIdaddy
execute if entity @s[tag=ai5] run tag @e[tag=AImaster,scores={rNumber=5}] add AIdaddy
execute if entity @s[tag=ai6] run tag @e[tag=AImaster,scores={rNumber=6}] add AIdaddy
execute if entity @s[tag=ai7] run tag @e[tag=AImaster,scores={rNumber=7}] add AIdaddy
execute if entity @s[tag=ai8] run tag @e[tag=AImaster,scores={rNumber=8}] add AIdaddy
execute if entity @s[tag=ai9] run tag @e[tag=AImaster,scores={rNumber=9}] add AIdaddy

#no more forced anvils
scoreboard players set #anvilLeadCheck value 9999999

#exit early (die) if we're already finished
execute if entity @e[tag=AIdaddy,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=aiDisable] run kill @s

#continue on if we're not disabled
execute unless entity @e[tag=AIdaddy,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=aiDisable] run function sprint_racer:game_logic/1/ai_finish_true

tag @e[tag=AIdaddy,x=1548,y=155,z=406,distance=..1,type=armor_stand] remove AIdaddy