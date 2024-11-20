scoreboard players set #executed value 1

#if this was somehow run by a spectator during gameplay, get them initialized and into game
execute if entity @s[tag=forcespectate] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1..3}] run function sprint_racer:join_logic/mid_game_spec/join_success

tag @s remove forcespectate
execute at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

function sprint_racer:give_ids2

scoreboard players set @s afkTime 0
tag @s remove afk

function sprint_racer_language:switch_to_player