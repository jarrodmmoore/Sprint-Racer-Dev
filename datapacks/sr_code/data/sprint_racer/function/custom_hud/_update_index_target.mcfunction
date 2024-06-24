#display is composed of:
#1 = left end (00000000-0000-0328-0000-000000000001)
#2 = target icon + digit 1b
#3 = digit 2a
#4 = right end
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

#split remaining targets into two variables
scoreboard players operation #hudTargetCountA value = #hudTargetCount value
scoreboard players operation #hudTargetCountA value /= #10 value
scoreboard players operation #hudTargetCountB value = #hudTargetCount value
scoreboard players operation #hudTargetCountB value %= #10 value
#max display value is 99
execute if score #hudTargetCountA value matches 10.. run scoreboard players set #hudTargetCountB value 9
execute if score #hudTargetCountA value matches 10.. run scoreboard players set #hudTargetCountA value 9

#spacing left of center
#8 + 32 + 14 + (14?) + 8 = 62, 76
scoreboard players set #hudLeftDebt value 62
execute if score #hudTargetCountA value matches 1.. run scoreboard players add #hudLeftDebt value 14

#spacing right of center
#8 + 32 + 14 + 7 + 14 + 14 + 7 + 14 + 8 + (14?) = 118, 132
scoreboard players set #hudRightDebt value 118
execute if score #hudTimeMin value matches 10.. run scoreboard players add #hudRightDebt value 14

###########
#only update slots if they changed since from the previous run

#SLOT 1
execute unless score #hudPrev1 value matches -89 run function sprint_racer:custom_hud/misc/slot1_left_end
#SLOT 2
execute unless score #hudTargetCountA value = #hudPrev2 value run function sprint_racer:custom_hud/target/slot2
#SLOT 3
execute unless score #hudTargetCountB value = #hudPrev3 value run function sprint_racer:custom_hud/target/slot3
#SLOT 4
execute unless score #hudPrev1 value matches -88 run function sprint_racer:custom_hud/misc/slot4_right_end

#SLOT 5
execute unless score #hudLeftDebt value = #hudPrev5 value run function sprint_racer:custom_hud/target/slot5

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