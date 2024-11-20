#set a thing so that tnts know we're doing teams
scoreboard players set global aiHasItem40 1

#give players their team flags in inventory
execute as @a[gamemode=adventure,tag=playerOrange,tag=playing,tag=!noInventory] run function sprint_racer:items/item_tick/team_flag_orange
execute as @a[gamemode=adventure,tag=playerCyan,tag=playing,tag=!noInventory] run function sprint_racer:items/item_tick/team_flag_cyan

#enderman thief
tag @e[tag=endieMoved,type=enderman] remove endieMoved
execute if entity @e[type=!marker,type=!armor_stand,scores={enderman=..999}] run function sprint_racer:items/item_tick/enderman_thief_teams
execute if entity @e[type=!marker,type=!armor_stand,scores={enderSteal=..999}] run function sprint_racer:items/item_tick/enderman_stealing

#players holding an item tagged with "stronk" are allowed to attack other players
execute as @a[tag=playing] if items entity @s weapon.mainhand *[custom_data~{stronk:1b}] run function sprint_racer:items/item_tick/holding_melee_weapon

#certain item drops deploy on contact with the ground
scoreboard players add @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] age 1
execute as @e[type=item,scores={age=1},nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] at @s run function sprint_racer:items/item_tick/dropped_item_adopt_team
execute as @e[type=item,nbt={OnGround:1b,Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] at @s run function sprint_racer:items/item_tick/deploy_on_ground/_index

#trapped chests and land mines show team particles
execute as @e[type=armor_stand,tag=!itemCyan,tag=itemcontainer,scores={itemBlockState=10}] at @s run particle falling_dust{block_state:"minecraft:orange_concrete"} ~ ~2.2 ~ 0.4 0.2 0.4 1 3 normal @a[tag=playerOrange,distance=..35]
execute as @e[type=armor_stand,tag=itemCyan,tag=itemcontainer,scores={itemBlockState=10}] at @s run particle falling_dust{block_state:"minecraft:cyan_concrete"} ~ ~2.2 ~ 0.4 0.2 0.4 1 3 normal @a[tag=playerCyan,distance=..35]

#poison area effect cloud
execute as @e[type=area_effect_cloud,tag=!nasty,nbt={potion_contents:{potion:"minecraft:poison"}}] at @s run function sprint_racer:items/item_tick/poison_cloud
execute as @e[type=area_effect_cloud,tag=!bignasty,nbt={potion_contents:{potion:"minecraft:strong_poison"}}] at @s run function sprint_racer:items/item_tick/poison_cloud_big
execute as @a[tag=playing,gamemode=adventure,tag=poisoned] at @s if entity @e[tag=lingering_trap,type=area_effect_cloud,distance=..5] unless score @s attackTime matches 90.. run function sprint_racer:items/item_tick/poison_cloud_hit

#resistance given by resistance nodes override other stuff
scoreboard players remove @e[type=!marker,type=!armor_stand,scores={nResist=1..}] nResist 1

#eat golden apple
execute as @e[type=!marker,type=!armor_stand,scores={eatGoldApple=..999}] at @s run function sprint_racer:items/item_tick/golden_apple

#clear absorption when hp falls below max+1
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
execute if entity @s[type=armor_stand,scores={storm=..9999}] run function sprint_racer:items/item_tick/lightning_storm

#anvil (MOVED TO sprint_racer:_timescale)
#execute if entity @e[type=!marker,type=!armor_stand,scores={anvil=..999}] run function sprint_racer:items/item_tick/anvil_player
#execute as @e[type=armor_stand,tag=anvil] at @s run function sprint_racer:items/item_tick/anvil_entity


#totem of undying
execute as @a[scores={useTotem=..999}] at @s run function sprint_racer:items/item_tick/totem_used

#throw ender pearl
execute as @a[scores={usePearl=..999}] at @s run function sprint_racer:items/item_tick/pearl_used
execute as @e[type=ender_pearl] at @s run function sprint_racer:items/item_tick/ender_pearl_generic

#warp
#execute as @e[scores={useEye=..999}] at @s run kill @e[type=eye_of_ender]
execute as @e[type=!marker,type=!armor_stand,scores={useEye=..999}] at @s run function sprint_racer:items/item_tick/elite/warp/_index


bossbar set minecraft:control_openwings players @a[tag=!bbarbump,gamemode=adventure,nbt={FallFlying:0b,OnGround:0b},scores={elytraTimer=50..}]

#elytra (note: this only applies to human players, AI elytra stuff is handled elsewhere)
execute as @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",count:1,components:{"minecraft:custom_data":{item:1b}}}]}] at @s run function sprint_racer:items/item_tick/elytra_found
execute as @a[scores={elytraTimer=1..}] at @s run function sprint_racer:items/item_tick/elytra

#IMPORTANT!!!
#handle right-clicks for using some items
execute as @a[scores={inputCooldown=..0,carrotInput=..999}] if items entity @s weapon.mainhand *[custom_data~{item:1b}] at @s run function sprint_racer:items/item_tick/normal_or_elite

#kill invalid chickens
kill @e[type=chicken,tag=!chickenmine,tag=!chickenstay,tag=!killme]

#chicken mine
execute as @e[tag=chickenmine,type=chicken] at @s run function sprint_racer:items/item_tick/chicken_mine_teams
execute as @e[type=zombified_piglin,tag=cminezombie] at @s run function sprint_racer:items/item_tick/chicken_mine_zombie

#generic explosion
execute if entity @e[tag=explosion] run function sprint_racer:items/item_tick/explosion

#tnt (MOVED)
#execute if entity @e[type=tnt] run function sprint_racer:items/item_tick/tnt_teams

#projectile safety cooldown
scoreboard players remove @e[type=!marker,scores={projectileSafe=1..}] projectileSafe 1
scoreboard players remove @e[type=!marker,scores={lightningSafe=1..}] lightningSafe 1


#slime and magma traps
execute as @e[tag=slimetrap,type=armor_stand] at @s run function sprint_racer:items/item_tick/slime_trap_teams
execute as @e[tag=magmatrap,type=armor_stand] at @s run function sprint_racer:items/item_tick/magma_trap_teams

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
execute if entity @e[type=snowball,tag=!mHitbox,tag=!targetVisual] run function sprint_racer:items/item_tick/snowball_teams
execute unless entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=26a] as @e[tag=missile,type=armor_stand] at @s run function sprint_racer:items/item_tick/missile_teams
execute if entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=26a] as @e[tag=missile,type=armor_stand] at @s run function sprint_racer:items/item_tick/missile_fast_teams_init

#repeat stuff if in half tick mode
execute if entity @s[tag=halftick] run function sprint_racer:items/item_tick/_main_echo_teams