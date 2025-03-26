tag @e[tag=aiTarget1,tag=secondaryTarget] remove secondaryTarget

#target must be an aec!
execute if entity @e[tag=aiTarget1,type=!area_effect_cloud] run function sprint_racer:ai/general/clear_old_ai_targets

#no aec target? spawn one
execute unless entity @e[tag=aiTarget1,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Tags:["aiTarget1"],Particle:{type:"block",block_state:{Name:"air"}},Duration:6}

#turn randomly as we move (very similar to squid blindness)
scoreboard players operation @s math = @e[limit=1,type=armor_stand,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..2}] rNumber
scoreboard players operation @s math2 = @e[limit=1,type=armor_stand,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..3}] rNumber
scoreboard players set @s[scores={math=1}] aiRotOffset 10
scoreboard players set @s[scores={math=2}] aiRotOffset -10
scoreboard players set @s aiRotOSTime 4

#don't run into pits, silly goose! do a 180
execute if score @s aiAirTime matches ..4 rotated ~ 0 if block ^ ^ ^1 #sprint_racer:ai_not_solid unless block ^ ^ ^1 water if block ^ ^-1 ^1 #sprint_racer:ai_not_solid unless block ^ ^-1 ^1 water if block ^ ^-2 ^1 #sprint_racer:ai_not_solid if block ^ ^-3 ^1 #sprint_racer:ai_not_solid run scoreboard players add @s aiRotOffset 180

#turn sharply if we're rubbing against a wall
scoreboard players operation #test value = @e[limit=1,type=armor_stand,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..50}] rNumber
execute if score #test value matches 1 run scoreboard players add @s roamLookBias 1
execute if score @s roamLookBias matches 2.. run scoreboard players set @s roamLookBias 0
execute unless score @s roamLookBias matches 1 rotated ~ 0 unless block ^ ^1 ^1 #sprint_racer:ai_not_solid run scoreboard players remove @s aiRotOffset 30
execute if score @s roamLookBias matches 1 rotated ~ 0 unless block ^ ^1 ^1 #sprint_racer:ai_not_solid run scoreboard players add @s aiRotOffset 30

#jump if we need to
execute if score @s aiAirTime matches ..4 rotated ~ 0 unless block ^ ^ ^1 #sprint_racer:ai_not_solid unless block ^ ^ ^1 #minecraft:slabs unless block ^ ^ ^1 #minecraft:stairs if block ^ ^1 ^1 #sprint_racer:ai_not_solid if block ^ ^2 ^1 #sprint_racer:ai_not_solid run tag @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand] add aijump

#keep aec alive as long as this code is running
data merge entity @e[limit=1,tag=aiTarget1,type=area_effect_cloud] {Particle:{type:"block",block_state:{Name:"air"}},Duration:6}

#teleport aec depending what direction we're going
execute if entity @s[tag=!inWater] at @s rotated ~ 0 positioned ^ ^ ^5 run tp @e[limit=1,tag=aiTarget1,type=area_effect_cloud] ~ ~ ~
execute if entity @s[tag=inWater,scores={math2=1}] at @s rotated ~ 10 positioned ^ ^ ^5 run tp @e[limit=1,tag=aiTarget1,type=area_effect_cloud] ~ ~ ~
execute if entity @s[tag=inWater,scores={math2=2}] at @s rotated ~ 0 positioned ^ ^ ^5 run tp @e[limit=1,tag=aiTarget1,type=area_effect_cloud] ~ ~ ~
execute if entity @s[tag=inWater,scores={math2=3}] at @s rotated ~ -10 positioned ^ ^ ^5 run tp @e[limit=1,tag=aiTarget1,type=area_effect_cloud] ~ ~ ~

#look for breadcrumbs so we can get ourselves back on the grid
execute if score @s roamLookTime matches ..0 run function sprint_racer:ai/general/behaviors/roam/look_for_breadcrumbs