execute positioned 1556 89 406 rotated 90 0 run function sprint_racer:varied_teleport
execute unless entity @a[tag=!self] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add summonProps
function sprint_racer_language:join_messages/in_lobby_not_started

#force back to lobby if alone and in podium mode
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=4..}] unless entity @a[tag=!self] run function sprint_racer:game_logic/0/_initialize