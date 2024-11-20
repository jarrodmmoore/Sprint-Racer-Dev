execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=3}] if entity @s[scores={KOs=1..}] run function sprint_racer_language:_dlc_3/gameplay/lose_point_team_ko
scoreboard players remove @s[scores={KOs=1..}] KOs 1

scoreboard players set #team_ko value 1