execute if entity @s[scores={AIBC_id=1..25}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_1_25
execute if entity @s[scores={AIBC_id=26..50}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_26_50
execute if entity @s[scores={AIBC_id=51..75}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_51_75
execute if entity @s[scores={AIBC_id=76..100}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_76_100
execute if entity @s[scores={AIBC_id=101..125}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_101_125

execute if entity @s[scores={AIBC_id=126..150}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_126_150
execute if entity @s[scores={AIBC_id=151..175}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_151_175
execute if entity @s[scores={AIBC_id=176..200}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_176_200
execute if entity @s[scores={AIBC_id=201..225}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_201_225
execute if entity @s[scores={AIBC_id=226..250}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_226_250

execute if entity @s[scores={AIBC_id=251..275}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_251_275
execute if entity @s[scores={AIBC_id=276..300}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_276_300
execute if entity @s[scores={AIBC_id=301..325}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_301_325
execute if entity @s[scores={AIBC_id=326..350}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_326_350
execute if entity @s[scores={AIBC_id=351..375}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_351_375

execute if entity @s[scores={AIBC_id=376..400}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_376_400
execute if entity @s[scores={AIBC_id=401..425}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_401_425
execute if entity @s[scores={AIBC_id=426..450}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_426_450
execute if entity @s[scores={AIBC_id=451..475}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_451_475
execute if entity @s[scores={AIBC_id=476..500}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_476_500

execute if entity @s[scores={AIBC_id=501..525}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_501_525
execute if entity @s[scores={AIBC_id=526..550}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_526_550
execute if entity @s[scores={AIBC_id=551..575}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_551_575
execute if entity @s[scores={AIBC_id=576..600}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_576_600
execute if entity @s[scores={AIBC_id=601..625}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/i_t/_index_target_601_625

#if we can't find what we're looking for, just run at the nearest breadcrumb (will NOT target dead ends, these are pretty much just used for ender pearl throwing trajectory)
execute if entity @s[tag=recoveryPoint] run scoreboard players add @s recoverAttempts 1
execute if entity @s[tag=recoveryPoint] unless entity @e[tag=iwannabetheguy] run tag @e[tag=AIBC,limit=1,sort=nearest,tag=!AIBC_deadend,scores={AIBC_event=9}] add iwannabetheguy
execute if entity @s[tag=recoveryPoint] unless entity @e[tag=iwannabetheguy] run tag @s remove recoveryPoint
execute unless entity @s[tag=pickrandom] unless entity @s[tag=recoveryPoint] unless entity @e[tag=iwannabetheguy] run tag @e[tag=AIBC,limit=1,sort=nearest,tag=!AIBC_deadend,tag=!elytraPath] add iwannabetheguy
execute if entity @s[tag=pickrandom] unless entity @s[tag=recoveryPoint] unless entity @e[tag=iwannabetheguy] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/random_pick_nearby
tag @s remove pickrandom

execute if entity @e[tag=iwannabetheguy,type=marker] at @e[tag=iwannabetheguy,type=marker,sort=nearest] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/spawn_aec

tag @e[tag=iwannabetheguy,type=marker] remove iwannabetheguy