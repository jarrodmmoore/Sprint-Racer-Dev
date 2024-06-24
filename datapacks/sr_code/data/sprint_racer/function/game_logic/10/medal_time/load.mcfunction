scoreboard players set @s bronzeTR 0
scoreboard players set @s silverTR 0
scoreboard players set @s goldTR 0
scoreboard players set @s diamondTR 0

#MATH TIME
#bronze
scoreboard players operation @s bronzeTR += @s customMedalB4

scoreboard players set @s math 10
scoreboard players operation @s math2 = @s customMedalB3
scoreboard players operation @s math2 *= @s math
scoreboard players operation @s bronzeTR += @s math2

scoreboard players set @s math 100
scoreboard players operation @s math2 = @s customMedalB2
scoreboard players operation @s math2 *= @s math
scoreboard players operation @s bronzeTR += @s math2

scoreboard players set @s math 600
scoreboard players operation @s math2 = @s customMedalB1
scoreboard players operation @s math2 *= @s math
scoreboard players operation @s bronzeTR += @s math2

#silver
scoreboard players operation @s silverTR += @s customMedalS4

scoreboard players set @s math 10
scoreboard players operation @s math2 = @s customMedalS3
scoreboard players operation @s math2 *= @s math
scoreboard players operation @s silverTR += @s math2

scoreboard players set @s math 100
scoreboard players operation @s math2 = @s customMedalS2
scoreboard players operation @s math2 *= @s math
scoreboard players operation @s silverTR += @s math2

scoreboard players set @s math 600
scoreboard players operation @s math2 = @s customMedalS1
scoreboard players operation @s math2 *= @s math
scoreboard players operation @s silverTR += @s math2

#gold
scoreboard players operation @s goldTR += @s customMedalG4

scoreboard players set @s math 10
scoreboard players operation @s math2 = @s customMedalG3
scoreboard players operation @s math2 *= @s math
scoreboard players operation @s goldTR += @s math2

scoreboard players set @s math 100
scoreboard players operation @s math2 = @s customMedalG2
scoreboard players operation @s math2 *= @s math
scoreboard players operation @s goldTR += @s math2

scoreboard players set @s math 600
scoreboard players operation @s math2 = @s customMedalG1
scoreboard players operation @s math2 *= @s math
scoreboard players operation @s goldTR += @s math2

#diamond
scoreboard players operation @s diamondTR += @s customMedalD4

scoreboard players set @s math 10
scoreboard players operation @s math2 = @s customMedalD3
scoreboard players operation @s math2 *= @s math
scoreboard players operation @s diamondTR += @s math2

scoreboard players set @s math 100
scoreboard players operation @s math2 = @s customMedalD2
scoreboard players operation @s math2 *= @s math
scoreboard players operation @s diamondTR += @s math2

scoreboard players set @s math 600
scoreboard players operation @s math2 = @s customMedalD1
scoreboard players operation @s math2 *= @s math
scoreboard players operation @s diamondTR += @s math2


#alright, now send w the times
scoreboard players operation @e[tag=w,limit=1,type=armor_stand] bronzeTR = @s bronzeTR
scoreboard players operation @e[tag=w,limit=1,type=armor_stand] silverTR = @s silverTR
scoreboard players operation @e[tag=w,limit=1,type=armor_stand] goldTR = @s goldTR
scoreboard players operation @e[tag=w,limit=1,type=armor_stand] diamondTR = @s diamondTR