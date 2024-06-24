#display is composed of:
#1 = left end + icon for gamemode + 4px connector + extra digit (00000000-0000-0328-0000-000000000001)
#2 = digit 1b
#3 = slash + digit 2a
#4 = digit 2b + right end
#...
#5 = variable space
#...
#6 = space (22px)
#7 = space (22px)
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

#split current lap into two variables
scoreboard players operation #hudIndLapA value = @s lapFake
scoreboard players operation #hudIndLapA value /= #10 value
scoreboard players operation #hudIndLapB value = @s lapFake
scoreboard players operation #hudIndLapB value %= #10 value
#max display value is 99
execute if score #hudIndLapA value matches 10.. run scoreboard players set #hudIndLapB value 9
execute if score #hudIndLapA value matches 10.. run scoreboard players set #hudIndLapA value 9

#spacing left of center
#8 + 32 + 4 + (14 if #hudLapA > 0) + 14 + 15 + (14 if #hudIndLapA > 0) + 14 + 8 = 95, 109, 123
scoreboard players set #hudLeftDebt value 95
execute if score #hudLapA value matches 1.. run scoreboard players add #hudLeftDebt value 14
execute if score #hudIndLapA value matches 1.. run scoreboard players add #hudLeftDebt value 14

#spacing right of center
#8 + 32 + 14 + 7 + 14 + 14 + 7 + 14 + 8 + (14?) = 118, 132
scoreboard players set #hudRightDebt value 118
execute if score #hudTimeMin value matches 10.. run scoreboard players add #hudRightDebt value 14

###########
#only update slots if they changed since from the previous run

#SLOT 1
execute unless score #hudIndLapA value = #hudPrev1 value run function sprint_racer:custom_hud/race/slot1
#SLOT 2
execute unless score #hudIndLapB value = #hudPrev2 value run function sprint_racer:custom_hud/race/slot2
#SLOT 3
execute unless score #hudLapA value = #hudPrev3 value run function sprint_racer:custom_hud/race/slot3
#SLOT 4
execute unless score #hudLapB value = #hudPrev4 value run function sprint_racer:custom_hud/race/slot4

#SLOT 5
execute unless score #hudLeftDebt value = #hudPrev5 value run function sprint_racer:custom_hud/race/slot5

#SLOT 6 & 7
execute unless score #hudPrev6 value matches -96 run function sprint_racer:custom_hud/misc/slot6_and_7

#SLOT 8
execute unless score #hudRightDebt value = #hudPrev8 value run function sprint_racer:custom_hud/race/slot8

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