#reminder: there is a seperate version of this function for race and battle mode

#keep track of whether anything's been modified. if so, we'll need to record a temporary save state that we can return to later
scoreboard players set #settingsWereOverridden value 0


#items
execute if entity @s[tag=o_itemsOn] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"optItems",add2:"w",remove1:"optNoItems",remove2:"optItemsB",remove3:"optItemsR"}
execute if entity @s[tag=o_itemsOff] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"optNoItems",add2:"w",remove1:"optItems",remove2:"optItemsB",remove3:"optItemsR"}

#item bans
execute if entity @s[tag=banNo1] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"banNo1",add2:"banEnchant1",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banNo2] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"banNo2",add2:"banEnchant2",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banNo3] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"banNo3",add2:"banEnchant3",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banNo4] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"banNo4",add2:"banEnchant4",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banNo5] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"banNo5",add2:"banEnchant5",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banNo6] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"banNo6",add2:"banEnchant6",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banNo7] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"banNo7",add2:"banEnchant7",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banNo8] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"banNo8",add2:"banEnchant8",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banNo9] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"banNo9",add2:"banEnchant9",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banNo10] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"banNo10",add2:"banEnchant10",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banNo11] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"banNo11",add2:"banEnchant11",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banNo12] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"banNo12",add2:"banEnchant12",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banNo13] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"banNo13",add2:"banEnchant13",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banNo14] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"banNo14",add2:"banEnchant14",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banNo15] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"banNo15",add2:"banEnchant15",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banNo16] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"banNo16",add2:"banEnchant16",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banNo17] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"banNo17",add2:"banEnchant17",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banNo18] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"banNo18",add2:"banEnchant18",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banNo19] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"banNo19",add2:"banEnchant19",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banNo20] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"banNo20",add2:"banEnchant20",remove1:"dummy",remove2:"dummy",remove3:"dummy"}

execute if entity @s[tag=banEnchant1] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banEnchant1",remove1:"banNo1",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banEnchant2] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banEnchant2",remove1:"banNo2",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banEnchant3] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banEnchant3",remove1:"banNo3",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banEnchant4] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banEnchant4",remove1:"banNo4",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banEnchant5] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banEnchant5",remove1:"banNo5",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banEnchant6] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banEnchant6",remove1:"banNo6",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banEnchant7] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banEnchant7",remove1:"banNo7",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banEnchant8] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banEnchant8",remove1:"banNo8",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banEnchant9] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banEnchant9",remove1:"banNo9",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banEnchant10] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banEnchant10",remove1:"banNo10",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banEnchant11] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banEnchant11",remove1:"banNo11",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banEnchant12] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banEnchant12",remove1:"banNo12",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banEnchant13] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banEnchant13",remove1:"banNo13",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banEnchant14] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banEnchant14",remove1:"banNo14",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banEnchant15] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banEnchant15",remove1:"banNo15",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banEnchant16] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banEnchant16",remove1:"banNo16",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banEnchant17] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banEnchant17",remove1:"banNo17",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banEnchant18] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banEnchant18",remove1:"banNo18",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banEnchant19] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banEnchant19",remove1:"banNo19",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banEnchant20] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banEnchant20",remove1:"banNo20",remove2:"dummy",remove3:"dummy"}

execute if entity @s[tag=forceNo1] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banNo1",remove2:"banEnchant1",remove3:"dummy"}
execute if entity @s[tag=forceNo2] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banNo2",remove2:"banEnchant2",remove3:"dummy"}
execute if entity @s[tag=forceNo3] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banNo3",remove2:"banEnchant3",remove3:"dummy"}
execute if entity @s[tag=forceNo4] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banNo4",remove2:"banEnchant4",remove3:"dummy"}
execute if entity @s[tag=forceNo5] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banNo5",remove2:"banEnchant5",remove3:"dummy"}
execute if entity @s[tag=forceNo6] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banNo6",remove2:"banEnchant6",remove3:"dummy"}
execute if entity @s[tag=forceNo7] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banNo7",remove2:"banEnchant7",remove3:"dummy"}
execute if entity @s[tag=forceNo8] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banNo8",remove2:"banEnchant8",remove3:"dummy"}
execute if entity @s[tag=forceNo9] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banNo9",remove2:"banEnchant9",remove3:"dummy"}
execute if entity @s[tag=forceNo10] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banNo10",remove2:"banEnchant10",remove3:"dummy"}
execute if entity @s[tag=forceNo11] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banNo11",remove2:"banEnchant11",remove3:"dummy"}
execute if entity @s[tag=forceNo12] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banNo12",remove2:"banEnchant12",remove3:"dummy"}
execute if entity @s[tag=forceNo13] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banNo13",remove2:"banEnchant13",remove3:"dummy"}
execute if entity @s[tag=forceNo14] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banNo14",remove2:"banEnchant14",remove3:"dummy"}
execute if entity @s[tag=forceNo15] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banNo15",remove2:"banEnchant15",remove3:"dummy"}
execute if entity @s[tag=forceNo16] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banNo16",remove2:"banEnchant16",remove3:"dummy"}
execute if entity @s[tag=forceNo17] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banNo17",remove2:"banEnchant17",remove3:"dummy"}
execute if entity @s[tag=forceNo18] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banNo18",remove2:"banEnchant18",remove3:"dummy"}
execute if entity @s[tag=forceNo19] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banNo19",remove2:"banEnchant19",remove3:"dummy"}
execute if entity @s[tag=forceNo20] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banNo20",remove2:"banEnchant20",remove3:"dummy"}

#extra item bans
execute if entity @s[tag=banBattleBat] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"banBattleBat",add2:"banEnchantBattleBat",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=banEnchantBattleBat] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banEnchantBattleBat",remove1:"banBattleBat",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=forceBattleBat] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banBattleBat",remove2:"banEnchantBattleBat",remove3:"dummy"}

execute if entity @s[tag=banObliterator] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"banObliterator",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=forceObliterator] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"banObliterator",remove2:"dummy",remove3:"dummy"}

#item rule
execute if score @s itemPresetA matches 1.. as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting
execute if score @s itemPresetA matches 1.. run scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] itemPresetB = @s itemPresetA

#gamemode
execute if score @s gamemodePresetB matches 1.. as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting
execute if score @s gamemodePresetB matches 1.. run scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gamemodePresetB = @s gamemodePresetB
execute if score @s gamemodePresetB matches 1.. run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove randomPresetB
execute if entity @s[tag=randomPresetB] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"randomPresetB",remove1:"dummy",remove2:"dummy",remove3:"dummy"}

#teams
execute if entity @s[tag=o_teamsOn] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"teamplay",add2:"w",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=o_teamsOff] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"teamplay",remove2:"dummy",remove3:"dummy"}

#locator bar
execute if entity @s[tag=o_locatorBarOff] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"optNoLocatorBar",add2:"w",remove1:"dummy",remove2:"dummy",remove3:"dummy"}
execute if entity @s[tag=o_locatorBarOn] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:levels/_custom_general/override_a_setting_macro {add1:"w",add2:"w",remove1:"optNoLocatorBar",remove2:"dummy",remove3:"dummy"}




#recalc chest category stuff, but ONLY IF we messed with settings
execute if score #settingsWereOverridden value matches 0 run return 0
#=====

#check chest categories for voids
scoreboard players set #no_cat_check value 1
function sprint_racer:game_logic/0/toggle_item/check_color_red
function sprint_racer:game_logic/0/toggle_item/check_color_yellow
function sprint_racer:game_logic/0/toggle_item/check_color_blue
function sprint_racer:game_logic/0/toggle_item/check_color_green
scoreboard players set #no_cat_check value 0
function sprint_racer:game_logic/0/toggle_item/check_color_purple




#nothing further if time attack
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=7..8}] run return 1
#=====

#random gamemode preset, pick one at random
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=randomPresetB] run scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gamemodePresetB = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..3}] rNumber

#need to set time and stuff based on game type...

#hud
scoreboard players set #hudMode value 4
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetB=2}] run scoreboard players set #hudMode value 5

#bossbar time max
bossbar set timeremaining max 4800
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetB=2}] run bossbar set timeremaining max 7200

#clock digits
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] timeRemaining 5008
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] countTimeMin 4
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetB=2}] timeRemaining 7408
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetB=2}] countTimeMin 6

#item rule
function sprint_racer:items/item_presets/_index_battle
#resource control, set item preset to capsules only so Trapped Chests can at least slightly convincing
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetB=3}] run function sprint_racer:items/item_presets/capsules_only

#team name colors
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetB=2}] run team modify playerFinished color yellow
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetB=2}] run team modify playerFinished color dark_gray




#we modified stuff!
return 2