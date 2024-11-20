scoreboard players operation @s storedTimeMin = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] currentTimeMin
scoreboard players operation @s storedTimeSec = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] currentTimeSec
scoreboard players operation @s storedTimeMsec = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] currentTimeMsec
#scoreboard players set @s[scores={elytraTimer=..0}] actionbarState 2
#scoreboard players set @s[scores={elytraTimer=..0}] actionbarState2 20

#flash split time on new HUD
scoreboard players set @s flashSplitTime 20

#starts the lap animation, happens in another function
scoreboard players set @s lapAnimation 1

execute if entity @s[scores={racePosDisplay=..1,crowdCooldown=..0}] if score grandprix gameState matches 1 at @s run function sprint_racer:grand_prix/crowd_cheer
execute if entity @s[scores={racePosDisplay=2..4,crowdCooldown=..0}] if score grandprix gameState matches 1 at @s run function sprint_racer:grand_prix/crowd_claps

#tactics mode, get next item
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetA=3}] run function sprint_racer:game_logic/1/tactics/give_1

#save coords
function sprint_racer:save_coordinates