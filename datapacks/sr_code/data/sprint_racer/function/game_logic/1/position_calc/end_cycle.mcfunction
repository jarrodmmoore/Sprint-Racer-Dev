tag @e[tag=activeplayer,scores={racePosCalc=-100..}] add getgot
execute if entity @e[tag=activeplayer,tag=!getgot] run scoreboard players operation @e[tag=activeplayer,tag=!getgot] racePosCalc = @e[tag=w,type=armor_stand] finishPos
execute if entity @e[tag=activeplayer,tag=!getgot] as @e[tag=activeplayer,tag=!finished,tag=getgot] run scoreboard players add @e[tag=activeplayer,tag=!getgot] racePosCalc 1
tag @e[tag=getgot] remove getgot
execute as @a[tag=playing,tag=finished,scores={racePosCalc=1..}] run scoreboard players operation @s racePosDisplay = @s racePosCalc
execute as @e[tag=activeplayer,scores={racePosCalc=1..}] run scoreboard players operation @s racePosDisplay = @s racePosCalc
execute as @e[tag=activeplayer,scores={racePosCalc=1..}] run scoreboard players operation @s itemPosition = @s racePosDisplay
execute as @e[tag=activeplayer,scores={racePosCalc=1..}] run scoreboard players operation @s itemPosition -= @e[tag=w,type=armor_stand] finishPos
scoreboard players add @e[tag=activeplayer,scores={racePosCalc=1..}] itemPosition 1

#ai transfers score to ai puppet master for display
scoreboard players reset @e[tag=random,scores={rNumber=1..9}] racePosDisplay
execute as @e[tag=ai,scores={racePosDisplay=1..}] run function sprint_racer:game_logic/1/position_calc/ai_give_puppetmaster_racepos
execute as @e[tag=AImaster,type=armor_stand,tag=!eliminated,scores={finishPos=1..4}] run scoreboard players operation @s racePosDisplay = @s finishPos

tag @e[tag=playing,tag=finished,scores={racePosDisplay=1..4}] add top4
tag @e[tag=activeplayer,scores={racePosDisplay=1..4}] add top4
tag @e[tag=AImaster,scores={racePosDisplay=1..4}] add top4
scoreboard players reset @e[tag=!top4,scores={racePosDisplay2=-100..}] racePosDisplay2
function sprint_racer_language:gameplay/position_display/ai_sidebar_clear
execute as @e[tag=playing,tag=top4] run function sprint_racer:game_logic/1/position_calc/publish_positions_top_player
execute as @e[tag=AImaster,type=armor_stand,tag=top4] run function sprint_racer:game_logic/1/position_calc/publish_positions_top_ai
tag @e[tag=top4] remove top4

tag @e[tag=w,type=armor_stand] remove calcEnd
tag @e[tag=w,type=armor_stand] add calcStart

#elimination mode, peg whoever's in last
execute if entity @e[tag=w,scores={gameState=1,gamemodePresetA=2}] run function sprint_racer:game_logic/1/elimination/find_last_place_main