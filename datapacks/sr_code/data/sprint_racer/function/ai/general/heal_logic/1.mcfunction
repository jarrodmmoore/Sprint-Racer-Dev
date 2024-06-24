scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,scores={rNumber=1..50}] rNumber

#chance the ai will interrupt its healing process
execute if entity @s[tag=aiHealing,scores={hitboxHP=1013..,regenTimer=7,rNumber=1..30}] run tag @s remove aiHealing
execute if entity @s[tag=aiHealing,scores={hitboxHP=1008..1012,regenTimer=7,rNumber=1..25}] run tag @s remove aiHealing

#after taking damage, there's a chance we'll start doing some regen
#execute if entity @e[tag=w,type=armor_stand,tag=!halftick] if entity @s[tag=!aiHealing,scores={hitstun=1}] run tag @s add maybeRegen
execute if entity @s[tag=!aiHealing,scores={hitstun=1..2}] run tag @s add maybeRegen
execute if entity @s[tag=maybeRegen,scores={hitboxHP=1013..1019,rNumber=1..15}] run tag @s add aiHealing
execute if entity @s[tag=maybeRegen,scores={hitboxHP=1008..1012,rNumber=1..20}] run tag @s add aiHealing
tag @s[tag=maybeRegen] remove maybeRegen

#at low HP there's always a chance of starting the regen process
execute if entity @s[tag=!aiHealing,scores={hitboxHP=..1007}] run tag @s add maybeRegen
execute if entity @e[tag=w,type=armor_stand,scores={oTimerGlobal=1}] if entity @s[tag=maybeRegen,scores={hitstun=..0,rNumber=1}] run tag @s add aiHealing
tag @s[tag=maybeRegen] remove maybeRegen

#don't heal if a chase is happening or recently happened
tag @s[tag=aiHealing,scores={aiBehavior=3..4}] remove aiHealing
tag @s[tag=aiHealing,scores={aiChaseTime=10..}] remove aiHealing

#never heal in water
tag @s[tag=aiHealing,tag=inWater] remove aiHealing