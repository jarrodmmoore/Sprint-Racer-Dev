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
#9 = left end + timer icon + extra digit
#10 = minute digit + colon
#11 = seconds + colon
#12 = mseconds + right end (00000000-0000-0328-0000-00000000000c)

#get timer stuff
execute if score @s flashSplitTime matches 1.. run function sprint_racer:custom_hud/recall_time_stored
execute unless score @s flashSplitTime matches 1.. run function sprint_racer:custom_hud/recall_time_current
execute if score #getDigit0 value matches 10.. run scoreboard players set #getDigit1 value 9

#spacing left of center
#24 + 24 + 24 + 22 = 94

#spacing right of center
#8 + 32 + 14 + 7 + 14 + 14 + 7 + 14 + 8 + (14?) = 118, 132
scoreboard players set #hudRightDebt value 118
execute if score #hudTimeMin value matches 10.. run scoreboard players add #hudRightDebt value 14

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
execute unless score #getDigit0 value = #hudPrev9 value run function sprint_racer:custom_hud/race/slot9
#SLOT 10
execute unless score #getDigit1 value = #hudPrev10 value run function sprint_racer:custom_hud/race/slot10
#SLOT 11
execute unless score #getDigitSec value = #hudPrev11 value run function sprint_racer:custom_hud/race/slot11_index
#SLOT 12
execute unless score #getDigit4 value = #hudPrev12 value run function sprint_racer:custom_hud/race/slot12

###########

#ok, NOW we do the index
execute if score @s hudNode matches 1..6 run function sprint_racer:custom_hud/_update_index_1_6
execute if score @s hudNode matches 7..12 run function sprint_racer:custom_hud/_update_index_7_12
execute if score @s hudNode matches 13..18 run function sprint_racer:custom_hud/_update_index_13_18
execute if score @s hudNode matches 19..24 run function sprint_racer:custom_hud/_update_index_19_24
execute if score @s hudNode matches 25..32 run function sprint_racer:custom_hud/_update_index_25_32