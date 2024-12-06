#unranked player will keep their fallback value, which is whatever last place was last tick

#store this...
scoreboard players operation #finishPos value = @s finishPos

#clear display on ai puppetmasters
scoreboard players reset @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..9}] racePosDisplay

#players get race pos display and item position
execute as @a[tag=playing,tag=finished,scores={racePosCalc=1..}] run scoreboard players operation @s racePosDisplay = @s racePosCalc
execute as @e[tag=activeplayer,scores={racePosCalc=1..}] run function sprint_racer:game_logic/1/position_calc/improved/player_get_display_and_item_pos

#ai armor stands do stuff (publish top 4 on sidebar)
function sprint_racer_language:gameplay/position_display/ai_sidebar_clear
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] run function sprint_racer:game_logic/1/position_calc/improved/puppet_master_get_data

#publish top 4 players on sidebar
execute as @a[scores={racePosDisplay2=-2147483648..2147483647}] unless score @s racePosDisplay matches 1..4 run scoreboard players reset @s racePosDisplay2
execute as @a[tag=playing,scores={racePosDisplay=1..4}] run function sprint_racer:game_logic/1/position_calc/publish_positions_top_player


#elimination mode, peg whoever's in last
execute if entity @s[scores={gameState=1,gamemodePresetA=2}] run function sprint_racer:game_logic/1/elimination/find_last_place_main