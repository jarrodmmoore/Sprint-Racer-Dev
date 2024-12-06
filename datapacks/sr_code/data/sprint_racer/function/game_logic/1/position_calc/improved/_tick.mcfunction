#executed by w

#the original code for position calculation was completely unhinged.
#this new code for position calculation will be the same level of unhinged, but we're channeling that energy into performance optimization instead of chaos.


#PRE-CALCULATION

#cache locations of checkpoints and finish line on the map
scoreboard players add #posCalcPosCache value 1
execute if score #posCalcPosCache value matches 26.. run scoreboard players set #posCalcPosCache value 0
function sprint_racer:game_logic/1/position_calc/improved/cache_pos_calc_positions

#stop right here if game hasn't started yet
execute if score @s gameTime matches ..155 run return 0
#=====

#start assigning positions at finishPos (increases when someone finishes)
scoreboard players operation #racePosCalc value = @s finishPos

#finished players don't need to get calculated, so we'll just give them their finish position value since that isn't going to change
execute as @a[tag=playing,tag=finished] run scoreboard players operation @s racePosCalc = @s finishPos
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,tag=finished] run scoreboard players operation @s racePosCalc = @s finishPos

#all active players summon a interaction entity that we'll use to track their position, also log relevant checkpoint + lap combos
scoreboard players operation #posCalcCheck value = @s check
scoreboard players set #relevantLapMin value 2147483647
scoreboard players set #relevantLapMax value -2147483648
execute as @e[tag=activeplayer,tag=!finished] at @s run function sprint_racer:game_logic/1/position_calc/improved/player_calc_prep

#elimination mode: final lap count can never be reached!
execute if entity @s[scores={gamemodePresetA=2}] if score @s lap <= #relevantLapMax value run scoreboard players add @s lap 1

#abort if someone had invalid lap count
execute if score #useFastCalc value matches 0 run return -1
#=====



#CALCULATION

#do it!
function sprint_racer:game_logic/1/position_calc/improved/recursion_loop



#POST-CALCULATION

#for new tick: remember what last place was
scoreboard players operation #lastRacePosCalc value = #racePosCalc value
execute if score #lastRacePosCalc value matches 2.. run scoreboard players remove #lastRacePosCalc value 1

#publish positions
function sprint_racer:game_logic/1/position_calc/improved/publish_positions

#elimination mode: remove 1 from everyone's lap count if everyone is beyond that
execute if entity @s[scores={gamemodePresetA=2}] if score #relevantLapMin value matches 2.. run function sprint_racer:game_logic/1/position_calc/improved/elimination_lap_adjust