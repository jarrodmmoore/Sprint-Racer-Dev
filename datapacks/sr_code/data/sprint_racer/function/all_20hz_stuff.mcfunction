#AI
execute unless entity @a[gamemode=creative,scores={playerState=2}] run function sprint_racer:ai/general/__ai_main

#20Hz lobby stuff
execute if score global gameState matches 0 as @e[tag=w,type=armor_stand,limit=1] run function sprint_racer:game_logic/0/misc_lobby_happenings/20hz_stuff

#scripted move sequences
#always runs at 20Hz no matter what
execute as @e[tag=activeplayer,scores={scriptMove=1..4,elytraTimer=..0}] at @s run function sprint_racer:script_move/sequence
execute as @e[tag=node,type=marker,scores={nodeState=1..},tag=scriptmove,tag=scriptStart] at @s run function sprint_racer:script_move/start

#anvils (item effect) runs 20Hz always
#always runs at 20Hz no matter what
execute if entity @e[type=!marker,type=!armor_stand,scores={anvil=..999}] run function sprint_racer:items/item_tick/anvil_player
execute as @e[type=armor_stand,tag=anvil] at @s run function sprint_racer:items/item_tick/anvil_entity

#lap animation runs at 20Hz always
execute if score global gameState matches 1 as @a[tag=playing,scores={lapAnimation=1..}] at @s run function sprint_racer:game_logic/1/lap_animation/index
execute if score global gameState matches 7 as @a[tag=playing,scores={lapAnimation=1..}] at @s run function sprint_racer:game_logic/1/lap_animation/index
execute if score global gameState matches 12 as @a[tag=playing,scores={lapAnimation=1..}] at @s run function sprint_racer:game_logic/1/lap_animation/index

#tnt runs 20Hz always
execute unless score global aiHasItem40 matches 1 as @e[type=tnt] at @s run function sprint_racer:items/item_tick/tnt
execute if score global aiHasItem40 matches 1 as @e[type=tnt] at @s run function sprint_racer:items/item_tick/tnt_teams

#item drop cooldowns
execute if score #squidCooldown value matches 1.. run scoreboard players remove #squidCooldown value 1
execute if score #lightningCooldown value matches 1.. run scoreboard players remove #lightningCooldown value 1

#music system runs 20Hz always
function sprint_racer:music/global/_tick

#grand prix sfx
execute if score grandprix gameState matches 1 run function sprint_racer:grand_prix/main