execute if entity @e[tag=w,scores={gameState=3}] if entity @s[scores={KOs=1..}] run function sprint_racer_language:_dlc_3/gameplay/lose_point_team_ko
scoreboard players remove @s[scores={KOs=1..}] KOs 1

scoreboard players set #team_ko value 1