summon marker ~ ~ ~ {Tags:["setuptarget","nameThisTarget","aiTempTarget"]}

scoreboard players operation @e[tag=setuptarget,limit=1,type=marker,sort=nearest] AIBC_id = @e[limit=1,tag=iwannabetheguy,type=marker] AIBC_id
scoreboard players operation @e[tag=setuptarget,limit=1,type=marker,sort=nearest] AIBC_dir1 = @e[limit=1,tag=iwannabetheguy,type=marker] AIBC_dir1
scoreboard players operation @e[tag=setuptarget,limit=1,type=marker,sort=nearest] AIBC_dir2 = @e[limit=1,tag=iwannabetheguy,type=marker] AIBC_dir2
scoreboard players operation @e[tag=setuptarget,limit=1,type=marker,sort=nearest] AIBC_dir3 = @e[limit=1,tag=iwannabetheguy,type=marker] AIBC_dir3
scoreboard players operation @e[tag=setuptarget,limit=1,type=marker,sort=nearest] AIBC_dir4 = @e[limit=1,tag=iwannabetheguy,type=marker] AIBC_dir4
scoreboard players operation @e[tag=setuptarget,limit=1,type=marker,sort=nearest] AIBC_hook = @e[limit=1,tag=iwannabetheguy,type=marker] AIBC_hook
scoreboard players operation @e[tag=setuptarget,limit=1,type=marker,sort=nearest] AIBC_spread = @e[limit=1,tag=iwannabetheguy,type=marker] AIBC_spread
scoreboard players operation @e[tag=setuptarget,limit=1,type=marker,sort=nearest] AIBC_event = @e[limit=1,tag=iwannabetheguy,type=marker] AIBC_event
scoreboard players operation @e[tag=setuptarget,limit=1,type=marker,sort=nearest] AIBC_condition = @e[limit=1,tag=iwannabetheguy,type=marker] AIBC_condition
execute if entity @e[tag=iwannabetheguy,tag=hasOptimalSpread,type=marker] run tag @e[tag=setuptarget,limit=1,type=marker,sort=nearest] add hasOptimalSpread
execute if entity @e[tag=iwannabetheguy,tag=megaShortcut,type=marker] run tag @e[tag=setuptarget,limit=1,type=marker,sort=nearest] add megaShortcut
execute if entity @e[tag=iwannabetheguy,tag=requireGround,type=marker] run tag @e[tag=setuptarget,limit=1,type=marker,sort=nearest] add requireGround

scoreboard players operation @s aiHookForced = @e[limit=1,tag=iwannabetheguy,type=marker] AIBC_hook

scoreboard players set @s aiStuckTime2 0
scoreboard players set @s[nbt={OnGround:1b}] aiStuckSwim 0

#give it the right tags so that only AI number 1 will chase it
function sprint_racer:ai/general/name_target

#displace according to random spread, if enabled
#we have a chance to use the "optimal spread"
# > more likely if we're a higher difficulty AI
# > less likely if there's other players right next to us
# > less likely if there's a trap near the AI breadcrumb here
tag @s add lookatmeson
execute if entity @s[scores={aiSkill=..1}] run scoreboard players operation #spread_roll value = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..12}] rNumber
execute if entity @s[scores={aiSkill=2}] run scoreboard players operation #spread_roll value = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..8}] rNumber
execute if entity @s[tag=!tryhard,scores={aiSkill=3..}] run scoreboard players operation #spread_roll value = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..6}] rNumber
execute if entity @s[tag=tryhard,scores={aiSkill=3..}] run scoreboard players operation #spread_roll value = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..4}] rNumber
execute at @s as @e[limit=2,tag=activeplayer,tag=!lookatmeson,distance=..3] run scoreboard players add #spread_roll value 1
execute as @e[limit=1,tag=trap,distance=..4] run scoreboard players add #spread_roll value 2
execute if score global gameState matches 3 run scoreboard players add #spread_roll value 3
execute if score #spread_roll value matches 4.. as @e[tag=setuptarget,limit=1,type=marker,scores={AIBC_spread=1..}] at @s run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/random_spread
execute if score #spread_roll value matches ..3 as @e[tag=setuptarget,limit=1,type=marker,scores={AIBC_spread=1..}] at @s run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/optimal_spread
tag @s remove lookatmeson

tag @e[tag=setuptarget] remove setuptarget