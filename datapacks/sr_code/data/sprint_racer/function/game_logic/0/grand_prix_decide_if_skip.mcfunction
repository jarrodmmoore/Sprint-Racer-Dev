#decide to skip if we came from race or battle mode
execute if entity @s[scores={gameState=1}] run tag @s add gp_skip2next
execute if entity @s[scores={gameState=3}] run tag @s add gp_skip2next
execute if entity @s[scores={gameState=4}] run tag @s add gp_skip2next
execute if entity @s[scores={gameState=7}] run tag @s add gp_skip2next
execute if entity @s[scores={gameState=8}] run tag @s add gp_skip2next

#increment round number if came from race or battle mode, unless we quit early
execute if entity @s[tag=gp_skip2next,tag=!noskip2next] run scoreboard players add @s gpRound 1

#take a peek at the next round so we know how to get ready
function sprint_racer:game_logic/0/grand_prix_peek

#go straight to track select area if using "choose" mode
execute if entity @s[tag=gp_skip2next] if score #gpTrackSelect value matches 5 run tag @e[tag=w,type=armor_stand] add skiptochoose

#don't skip if we voted out
execute if entity @e[tag=w,type=armor_stand,tag=gp_no_skip_1] run tag @e[tag=w,type=armor_stand] remove gp_skip2next
tag @e[tag=w,type=armor_stand] remove gp_no_skip_1

#don't skip if we're using "vote", "roulette", or "choose" mode in this coming round
execute if entity @s[tag=gp_skip2next] if score #gpTrackSelect value matches 3.. run tag @s remove gp_skip2next