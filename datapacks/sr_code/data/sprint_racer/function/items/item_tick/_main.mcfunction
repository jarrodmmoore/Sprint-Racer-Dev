#set a thing so that tnts know we're not doing teams
scoreboard players set global aiHasItem40 0

#enderman thief
tag @e[tag=endieMoved,type=enderman] remove endieMoved
execute if entity @e[type=!marker,type=!armor_stand,scores={enderman=..999}] run function sprint_racer:items/item_tick/enderman_thief
execute if entity @e[type=!marker,type=!armor_stand,scores={enderSteal=..999}] run function sprint_racer:items/item_tick/enderman_stealing

#players holding an item tagged with "stronk" are allowed to attack other players
execute as @a[tag=playing] if items entity @s weapon.mainhand *[custom_data~{stronk:1b}] run function sprint_racer:items/item_tick/holding_melee_weapon

#certain item drops deploy on contact with the ground
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] at @s run function sprint_racer:items/item_tick/ground_deploy_entity

#poison area effect cloud
execute as @e[type=area_effect_cloud,tag=!nasty,nbt={potion_contents:{potion:"minecraft:poison"}}] at @s run function sprint_racer:items/item_tick/poison_cloud
execute as @e[type=area_effect_cloud,tag=!bignasty,nbt={potion_contents:{potion:"minecraft:strong_poison"}}] at @s run function sprint_racer:items/item_tick/poison_cloud_big
execute as @a[tag=playing,gamemode=adventure,tag=poisoned] at @s if entity @e[tag=lingering_trap,type=area_effect_cloud,distance=..5] unless score @s attackTime matches 90.. run function sprint_racer:items/item_tick/poison_cloud_hit

#resistance given by resistance nodes override other stuff
scoreboard players remove @e[type=!marker,type=!armor_stand,scores={nResist=1..}] nResist 1

#eat golden apple
execute as @e[type=!marker,type=!armor_stand,scores={eatGoldApple=..999}] at @s run function sprint_racer:items/item_tick/golden_apple

#clear absorption when hp falls below 21
#execute as @a[tag=absorption,scores={hp=..20}] run function sprint_racer:items/item_tick/remove_absorption
execute as @a[tag=absorption] if score @s hp <= @s cStatHP unless entity @s[scores={eatGoldApple=..999}] run function sprint_racer:items/item_tick/remove_absorption

#invisibility
execute if entity @e[type=!marker,type=!armor_stand,scores={invisibility=1..}] run function sprint_racer:items/item_tick/invisibility

#resistance
execute if entity @e[type=!marker,type=!armor_stand,scores={resistTime=1..}] run function sprint_racer:items/item_tick/resistance

#invincibility
execute if entity @e[type=!marker,type=!armor_stand,scores={invulTime=1..}] run function sprint_racer:items/item_tick/invincibility

#pickup timer
execute as @e[type=!marker,type=!armor_stand,scores={itemCooldown=1..}] run function sprint_racer:items/item_tick/pickup_timer

#lightning storm
execute if entity @s[scores={storm=..9999}] run function sprint_racer:items/item_tick/lightning_storm

#anvil (MOVED TO sprint_racer:_timescale)
#execute if entity @e[type=!marker,type=!armor_stand,scores={anvil=..999}] run function sprint_racer:items/item_tick/anvil_player
#execute as @e[type=armor_stand,tag=anvil] at @s run function sprint_racer:items/item_tick/anvil_entity


#totem of undying
execute as @a[scores={useTotem=..999}] at @s run function sprint_racer:items/item_tick/totem_used

#throw ender pearl
execute as @a[scores={usePearl=..999}] at @s run function sprint_racer:items/item_tick/pearl_used
execute as @e[type=ender_pearl] at @s run function sprint_racer:items/item_tick/ender_pearl_generic

#warp (MOVED, THIS WAS BROKEN BY 1.16)
#execute as @e[scores={useEye=..999}] at @s run kill @e[type=eye_of_ender]
#execute as @e[type=!marker,type=!armor_stand,scores={useEye=..999}] at @s run function sprint_racer:items/item_tick/elite/warp/_index


bossbar set minecraft:control_openwings players @a[tag=!bbarbump,gamemode=adventure,nbt={FallFlying:0b,OnGround:0b},scores={elytraTimer=50..}]

#elytra (note: this only applies to human players, AI elytra stuff is handled elsewhere)
execute as @a if items entity @s armor.chest elytra[custom_data~{item:1b}] at @s run function sprint_racer:items/item_tick/elytra_found
execute as @a[scores={elytraTimer=1..}] at @s run function sprint_racer:items/item_tick/elytra

#IMPORTANT!!!
#handle right-clicks for using some items
execute as @a[scores={inputCooldown=..0,carrotInput=..999}] if items entity @s weapon.mainhand *[custom_data~{item:1b}] at @s run function sprint_racer:items/item_tick/normal_or_elite

#kill invalid chickens
kill @e[type=chicken,tag=!chickenmine,tag=!chickenstay,tag=!killme]

#chicken mine
execute as @e[tag=chickenmine,type=chicken] at @s run function sprint_racer:items/item_tick/chicken_mine
execute as @e[type=zombified_piglin,tag=cminezombie] at @s run function sprint_racer:items/item_tick/chicken_mine_zombie

#generic explosion
execute if entity @e[tag=explosion] run function sprint_racer:items/item_tick/explosion

#tnt (MOVED)
#execute if entity @e[type=tnt] run function sprint_racer:items/item_tick/tnt

#projectile safety cooldown
scoreboard players remove @e[type=!marker,scores={projectileSafe=1..}] projectileSafe 1
scoreboard players remove @e[type=!marker,scores={lightningSafe=1..}] lightningSafe 1


#slime and magma traps
execute as @e[tag=slimetrap,type=armor_stand] at @s run function sprint_racer:items/item_tick/slime_trap
execute as @e[tag=magmatrap,type=armor_stand] at @s run function sprint_racer:items/item_tick/magma_trap

#poison clouds give zombies regeneration which is essentially their poison
execute if entity @e[type=!marker,type=!armor_stand,tag=ai] as @e[tag=trap,tag=nasty] at @s run function sprint_racer:items/item_tick/poison_cloud_ai
execute if entity @e[type=!marker,type=!armor_stand,tag=ai] as @e[tag=trap,tag=bignasty] at @s run function sprint_racer:items/item_tick/poison_cloud_ai_big

#generic "electrocution" effect
execute as @e[type=!marker,type=!armor_stand,scores={electrocute=..999}] at @s run function sprint_racer:items/item_tick/electrocute

#generic "burn" effect
execute as @e[type=!marker,type=!armor_stand,scores={burn=..999}] at @s run function sprint_racer:items/item_tick/burn

#visual "blindness" effect
execute as @e[type=!marker,type=!armor_stand,scores={blindtime=1..}] at @s run function sprint_racer:items/item_tick/blindness_visual

#some projectiles...
execute if entity @e[type=snowball,tag=!mHitbox,tag=!targetVisual] run function sprint_racer:items/item_tick/snowball
execute unless entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,type=armor_stand,tag=26a] as @e[tag=missile,type=armor_stand] at @s run function sprint_racer:items/item_tick/missile
execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,type=armor_stand,tag=26a] as @e[tag=missile,type=armor_stand] at @s run function sprint_racer:items/item_tick/missile_fast_init

#repeat stuff if in half tick mode
execute if entity @s[tag=halftick] run function sprint_racer:items/item_tick/_main_echo