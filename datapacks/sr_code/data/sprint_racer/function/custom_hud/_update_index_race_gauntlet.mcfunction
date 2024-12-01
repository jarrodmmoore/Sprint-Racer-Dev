#display is composed of:
#1 = 24px space (00000000-0000-0328-0000-000000000001)
#2 = 24px space
#3 = 24px space
#4 = 22px space
#...
#5 = variable space
#...
#6 = left end + digit 1a + digit 1b
#7 = mini slash + mini digit 1 + mini digit 2 + right end
#...
#8 = variable space
#...
#9 = left end 
#10 = timer icon + extra digit
#11 = minute digit + colon
#12 = seconds digits + right end (00000000-0000-0328-0000-00000000000c)

#spacing left of center
#24 + 24 + 24 + 22 = 94

#spacing right of center
#8 + 32 + (14?) + 14 + 7 + 14 + 14 + 8 = 97, 111
scoreboard players set #hudRightDebt value 118
execute if score #hudCountdownMin10 value matches 1.. run scoreboard players add #hudRightDebt value 14

###########
#only update slots if they changed since from the previous run

#SLOTS 1-5
execute unless score #hudPrev1 value matches -99 run function sprint_racer:custom_hud/race/slot1_to_5_hidden

#SLOT 6
execute if score #hudAllPlayers value matches ..9 unless score @s racePosDisplay = #hudPrev6 value run function sprint_racer:custom_hud/race/slot6_1digit
execute if score #hudAllPlayers value matches 10.. unless score @s racePosDisplay = #hudPrev6 value run function sprint_racer:custom_hud/race/slot6_2digit
#SLOT 7
execute if score #hudAllPlayers value matches ..9 unless score #hudAllPlayers value = #hudPrev7 value run function sprint_racer:custom_hud/race/slot7_1digit
execute if score #hudAllPlayers value matches 10.. unless score #hudAllPlayers value = #hudPrev7 value run function sprint_racer:custom_hud/race/slot7_2digit

#SLOT 8
execute unless score #hudRightDebt value = #hudPrev8 value run function sprint_racer:custom_hud/race/slot8_spaced

#SLOT 9
execute unless score #hudPrev9 value matches -94 run function sprint_racer:custom_hud/misc/slot9_left_end
#SLOT 10
execute unless score #hudCountdownMin10 value = #hudPrev10 value run function sprint_racer:custom_hud/misc/slot10_countdown_gauntlet
#SLOT 11
execute unless score #hudCountdownMin value = #hudPrev11 value run function sprint_racer:custom_hud/misc/slot11_countdown
#SLOT 12
execute unless score #hudCountdownSec2 value = #hudPrev12 value run function sprint_racer:custom_hud/misc/slot12_countdown

###########

#ok, NOW we do the index
execute if score @s hudNode matches 1..6 run function sprint_racer:custom_hud/_update_index_1_6
execute if score @s hudNode matches 7..12 run function sprint_racer:custom_hud/_update_index_7_12
execute if score @s hudNode matches 13..18 run function sprint_racer:custom_hud/_update_index_13_18
execute if score @s hudNode matches 19..24 run function sprint_racer:custom_hud/_update_index_19_24
execute if score @s hudNode matches 25..32 run function sprint_racer:custom_hud/_update_index_25_32