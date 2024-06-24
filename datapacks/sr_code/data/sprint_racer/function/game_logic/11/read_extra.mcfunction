#gamemode preset
execute if block ~2 ~ ~ spruce_planks run scoreboard players set @s[tag=read_race] gamemodePresetA 1
execute if block ~2 ~ ~ birch_planks run scoreboard players set @s[tag=read_race] gamemodePresetA 2
execute if block ~2 ~ ~ jungle_planks run scoreboard players set @s[tag=read_race] gamemodePresetA 3

execute if block ~2 ~ ~ spruce_planks run scoreboard players set @s[tag=read_battle] gamemodePresetB 1
execute if block ~2 ~ ~ birch_planks run scoreboard players set @s[tag=read_battle] gamemodePresetB 2
execute if block ~2 ~ ~ jungle_planks run scoreboard players set @s[tag=read_battle] gamemodePresetB 3
execute if block ~2 ~ ~ acacia_planks run scoreboard players set @s[tag=read_battle] gamemodePresetB 4


#modifier
execute if block ~3 ~ ~ white_wool run scoreboard players set @s gpModifier 1
execute if block ~3 ~ ~ orange_wool run scoreboard players set @s gpModifier 2
execute if block ~3 ~ ~ magenta_wool run scoreboard players set @s gpModifier 3
execute if block ~3 ~ ~ light_blue_wool run scoreboard players set @s gpModifier 4
execute if block ~3 ~ ~ yellow_wool run scoreboard players set @s gpModifier 5
execute if block ~3 ~ ~ lime_wool run scoreboard players set @s gpModifier 6
execute if block ~3 ~ ~ pink_wool run scoreboard players set @s gpModifier 7
execute if block ~3 ~ ~ gray_wool run scoreboard players set @s gpModifier 8
execute if block ~3 ~ ~ light_gray_wool run scoreboard players set @s gpModifier 9
execute if block ~3 ~ ~ cyan_wool run scoreboard players set @s gpModifier 10


#track select type
#1 = random
#2 = in order
#3 = vote
#4 = roulette
#5 = choose
scoreboard players set #gpTrackSelect value 1
execute if block ~4 ~ ~ white_wool run scoreboard players set #gpTrackSelect value 3
execute if block ~4 ~ ~ orange_wool run scoreboard players set #gpTrackSelect value 4
execute if block ~4 ~ ~ magenta_wool run scoreboard players set #gpTrackSelect value 5
execute if block ~4 ~ ~ light_blue_wool run scoreboard players set #gpTrackSelect value 2


#save state
scoreboard players set #gpSaveState value 0
execute if block ~5 ~ ~ white_wool run scoreboard players set #gpSaveState value 1
execute if block ~5 ~ ~ orange_wool run scoreboard players set #gpSaveState value 2
execute if block ~5 ~ ~ magenta_wool run scoreboard players set #gpSaveState value 3
execute if block ~5 ~ ~ light_blue_wool run scoreboard players set #gpSaveState value 4
execute if block ~5 ~ ~ yellow_wool run scoreboard players set #gpSaveState value 5
execute if block ~5 ~ ~ lime_wool run scoreboard players set #gpSaveState value 6
execute if block ~5 ~ ~ pink_wool run scoreboard players set #gpSaveState value 7
execute if block ~5 ~ ~ gray_wool run scoreboard players set #gpSaveState value 8
execute if block ~5 ~ ~ light_gray_wool run scoreboard players set #gpSaveState value 9
execute if block ~5 ~ ~ cyan_wool run scoreboard players set #gpSaveState value 10
