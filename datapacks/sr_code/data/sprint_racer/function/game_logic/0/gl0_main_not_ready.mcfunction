#send players to spawn
execute as @a[gamemode=adventure,x=1596,y=108,z=406,distance=190..] at @s run function sprint_racer:game_logic/0/goto_spawn

bossbar set minecraft:menutimer players
bossbar set minecraft:unreadyprogress players
bossbar set minecraft:readyprogress players @a[tag=lobby]

clear @a filled_map

#cycle display
scoreboard players set @s[scores={oTimer=201..}] oTimer 0
scoreboard players add @s oTimer 1

#bossbar display for required ready players
execute store result bossbar minecraft:readyprogress max run scoreboard players get @s readyRequired
execute store result bossbar minecraft:readyprogress value run scoreboard players get @s readyCount
function sprint_racer_language:lobby/bossbar_ready_up