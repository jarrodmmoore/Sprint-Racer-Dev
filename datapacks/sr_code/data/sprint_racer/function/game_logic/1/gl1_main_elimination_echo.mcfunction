#timer stuff
scoreboard players add @s gameTime 1
execute if entity @s[scores={gameTime=220..99999}] run function sprint_racer:game_logic/1/elimination/elimination_logic

#end sequence
execute if entity @s[scores={gameTime=200..,timeRemaining=..-1}] run function sprint_racer:game_logic/1/elimination/end_sequence

#red flash for last place's position display (the HUD will handle the rest of this)
scoreboard players add #lastPlaceFlash value 1
execute if score #lastPlaceFlash value matches 21.. run scoreboard players set #lastPlaceFlash value 1

#item stuff
execute if entity @s[tag=optItems,scores={oTimer=0,currentTimeMsec=0,gameTime=160..,timeRemaining=1..}] run function sprint_racer:game_logic/1/item_stuff
execute if entity @s[tag=!optItems,scores={oTimer=0,currentTimeMsec=0,gameTime=10..,timeRemaining=1..}] run function sprint_racer:items/container_check_itemless
function sprint_racer:items/container_tick

#starting countdown
execute if entity @s[scores={gameTime=..240}] run function sprint_racer:game_logic/1/start_countdown

#global timer
execute if entity @s[scores={gameTime=160..,timeRemaining=0..}] run function sprint_racer:game_logic/1/global_timer
execute if entity @s[scores={oTimer=1,timeRemaining=0..}] run scoreboard players add @a[tag=playing,tag=!finished] currentTime 1

#lap animation
#execute as @a[tag=playing,scores={lapAnimation=1..}] at @s run function sprint_racer:game_logic/1/lap_animation/index

#anvil lead check
execute if score #nextItemIsAnvil value matches 0 run scoreboard players remove #anvilLeadCheck value 1
execute if score #anvilLeadCheck value matches ..0 run function sprint_racer:game_logic/1/anvil_lead_check

#reset
scoreboard players remove @a[scores={resetCooldown=1..}] resetCooldown 1