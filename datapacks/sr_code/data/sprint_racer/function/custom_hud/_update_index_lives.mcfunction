#display is composed of:
#1 = left end + icon for gamemode + extra digit (00000000-0000-0328-0000-000000000001)
#2 = digit 1b
#3 = slash + digit 2a
#4 = digit 2b + right end
#...
#5 = variable space
#...
#6 = left end + digit 1a + digit 1b
#7 = mini slash + mini digit 1 + mini digit 2 + right end
#...
#8 = variable space
#...
#9 = left end
#10 = heart icon
#11 = lives digit
#12 = right end (00000000-0000-0328-0000-00000000000c)

#split current KO count into two variables
scoreboard players operation #hudKOsA value = @s KOs
scoreboard players operation #hudKOsA value /= #10 value
scoreboard players operation #hudKOsB value = @s KOs
scoreboard players operation #hudKOsB value %= #10 value
#max display value is 99
execute if score #hudKOsA value matches 10.. run scoreboard players set #hudKOsB value 9
execute if score #hudKOsA value matches 10.. run scoreboard players set #hudKOsA value 9

#split current KO goal into two variables
scoreboard players operation #hudKOgoalA value = @s KOgoal
scoreboard players operation #hudKOgoalA value /= #10 value
scoreboard players operation #hudKOgoalB value = @s KOgoal
scoreboard players operation #hudKOgoalB value %= #10 value
#max display value is 99
execute if score #hudKOgoalA value matches 10.. run scoreboard players set #hudKOgoalB value 9
execute if score #hudKOgoalA value matches 10.. run scoreboard players set #hudKOgoalA value 9

#we're the next elimination! flash red
scoreboard players set #elimDangerFlash value 0
execute if score #lastPlaceFlash value matches 11.. if entity @s[gamemode=adventure,tag=!eliminated,scores={playerLives=1}] run scoreboard players set #elimDangerFlash value 1

#spacing left of center
#8 + 32 + (14 if #hudLapA > 0) + 14 + 15 + (14 if #hudIndLapA > 0) + 14 + 8 = 91, 105, 119
scoreboard players set #hudLeftDebt value 91
execute if score #hudLapA value matches 1.. run scoreboard players add #hudLeftDebt value 14
execute if score #hudIndLapA value matches 1.. run scoreboard players add #hudLeftDebt value 14

#spacing right of center
#8 + 32 + 14 + 8 = 62
scoreboard players set #hudRightDebt value 62

###########
#only update slots if they changed since from the previous run

#SLOT 1
execute unless score #hudKOsA value = #hudPrev1 value run function sprint_racer:custom_hud/lives/slot1
#SLOT 2
execute unless score #hudKOsB value = #hudPrev2 value run function sprint_racer:custom_hud/lives/slot2
#SLOT 3
execute unless score #hudKOgoalA value = #hudPrev3 value run function sprint_racer:custom_hud/lives/slot3
#SLOT 4
execute unless score #hudKOgoalB value = #hudPrev4 value run function sprint_racer:custom_hud/lives/slot4

#SLOT 5
execute unless score #hudLeftDebt value = #hudPrev5 value run function sprint_racer:custom_hud/lives/slot5

#SLOT 6
execute if entity @s[tag=!eliminated] if score #hudAliveAtStart value matches ..9 unless score #hudAllAlive value = #hudPrev6 value run function sprint_racer:custom_hud/lives/slot6_1digit
execute if entity @s[tag=!eliminated] if score #hudAliveAtStart value matches 10.. unless score #hudAllAlive value = #hudPrev6 value run function sprint_racer:custom_hud/lives/slot6_2digit
execute if entity @s[tag=eliminated] if score #hudAliveAtStart value matches ..9 unless score @s finishPos = #hudPrev6 value run function sprint_racer:custom_hud/lives/slot6_1digit_eliminated
execute if entity @s[tag=eliminated] if score #hudAliveAtStart value matches 10.. unless score @s finishPos = #hudPrev6 value run function sprint_racer:custom_hud/lives/slot6_2digit_eliminated
#SLOT 7 (updated once and then never again)
execute if score #hudAliveAtStart value matches ..9 unless score #hudAliveAtStart value = #hudPrev7 value run function sprint_racer:custom_hud/lives/slot7_1digit
execute if score #hudAliveAtStart value matches 10.. unless score #hudAliveAtStart value = #hudPrev7 value run function sprint_racer:custom_hud/lives/slot7_2digit

#SLOT 8
execute unless score #hudRightDebt value = #hudPrev8 value run function sprint_racer:custom_hud/lives/slot8

#SLOT 9
execute unless score #hudPrev9 value matches -94 run function sprint_racer:custom_hud/misc/slot9_left_end
#SLOT 10
execute unless score #hudPrev9 value matches -91 run function sprint_racer:custom_hud/lives/slot10
#SLOT 11
execute if score #elimDangerFlash value matches 0 unless score #hudPrev11 value = @s playerLives run function sprint_racer:custom_hud/lives/slot11
execute if score #elimDangerFlash value matches 1 unless score #hudPrev11 value = @s playerLives run function sprint_racer:custom_hud/lives/slot11_danger
#SLOT 12
execute unless score #hudPrev12 value matches -90 run function sprint_racer:custom_hud/misc/slot12_right_end

###########

#ok, NOW we do the index
execute if score @s hudNode matches 1..6 run function sprint_racer:custom_hud/_update_index_1_6
execute if score @s hudNode matches 7..12 run function sprint_racer:custom_hud/_update_index_7_12
execute if score @s hudNode matches 13..18 run function sprint_racer:custom_hud/_update_index_13_18
execute if score @s hudNode matches 19..24 run function sprint_racer:custom_hud/_update_index_19_24
execute if score @s hudNode matches 25..32 run function sprint_racer:custom_hud/_update_index_25_32