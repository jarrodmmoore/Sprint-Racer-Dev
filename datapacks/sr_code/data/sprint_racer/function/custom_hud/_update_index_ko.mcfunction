#display is composed of:
#1 = left end (00000000-0000-0328-0000-000000000001)
#2 = icon for gamemode + extra digit
#3 = digit
#4 = right end
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

#split KOs into two variables
scoreboard players operation #hudKOsA value = @s KOs
scoreboard players operation #hudKOsA value /= #10 value
scoreboard players operation #hudKOsB value = @s KOs
scoreboard players operation #hudKOsB value %= #10 value
#max display value is 99
execute if score #hudKOsA value matches 10.. run scoreboard players set #hudKOsB value 9
execute if score #hudKOsA value matches 10.. run scoreboard players set #hudKOsA value 9

#spacing left of center
#8 + 32 + (14?) + 14 + 8 = 62, 76
scoreboard players set #hudLeftDebt value 62
execute if score #hudKOsA value matches 1.. run scoreboard players add #hudLeftDebt value 14

#spacing right of center
#8 + 32 + (14?) + 14 + 7 + 14 + 14 + 8 = 97, 111
scoreboard players set #hudRightDebt value 97
execute if score #hudCountdownMin10 value matches 1.. run scoreboard players add #hudRightDebt value 14

###########
#only update slots if they changed since from the previous run

#SLOT 1
execute unless score #hudPrev1 value matches -98 run function sprint_racer:custom_hud/elim/slot1
#SLOT 2
execute unless score #hudKOsA value = #hudPrev2 value run function sprint_racer:custom_hud/ko/slot2
#SLOT 3
execute unless score #hudKOsB value = #hudPrev3 value run function sprint_racer:custom_hud/ko/slot3
#SLOT 4
execute unless score #hudPrev4 value matches -97 run function sprint_racer:custom_hud/elim/slot4

#SLOT 5
execute unless score #hudLeftDebt value = #hudPrev5 value run function sprint_racer:custom_hud/ko/slot5

#SLOT 6
execute if score #hudAllPlayers value matches ..9 unless score @s battPosDisplay = #hudPrev6 value run function sprint_racer:custom_hud/ko/slot6_1digit
execute if score #hudAllPlayers value matches 10.. unless score @s battPosDisplay = #hudPrev6 value run function sprint_racer:custom_hud/ko/slot6_2digit
#SLOT 7
execute if score #hudAllPlayers value matches ..9 unless score #hudAllPlayers value = #hudPrev7 value run function sprint_racer:custom_hud/race/slot7_1digit
execute if score #hudAllPlayers value matches 10.. unless score #hudAllPlayers value = #hudPrev7 value run function sprint_racer:custom_hud/race/slot7_2digit

#SLOT 8
execute unless score #hudRightDebt value = #hudPrev8 value run function sprint_racer:custom_hud/ko/slot8

#SLOT 9
execute unless score #hudPrev9 value matches -94 run function sprint_racer:custom_hud/misc/slot9_left_end
#SLOT 10
execute unless score #hudCountdownMin10 value = #hudPrev10 value run function sprint_racer:custom_hud/misc/slot10_countdown
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