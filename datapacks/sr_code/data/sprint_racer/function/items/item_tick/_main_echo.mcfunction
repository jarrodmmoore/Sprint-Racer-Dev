#enderman thief
tag @e[tag=endieMoved] remove endieMoved
execute if entity @e[scores={enderman=..999}] run function sprint_racer:items/item_tick/enderman_thief
execute if entity @e[scores={enderSteal=..999}] run function sprint_racer:items/item_tick/enderman_stealing

#resistance given by resistance nodes override other stuff
scoreboard players remove @e[scores={nResist=1..}] nResist 1

#eat golden apple
execute as @e[type=!marker,type=!armor_stand,scores={eatGoldApple=..999}] at @s run function sprint_racer:items/item_tick/golden_apple

#invisibility
execute if entity @e[scores={invisibility=1..}] run function sprint_racer:items/item_tick/invisibility

#resistance
execute if entity @e[scores={resistTime=1..}] run function sprint_racer:items/item_tick/resistance

#invincibility
execute if entity @e[scores={invulTime=1..}] run function sprint_racer:items/item_tick/invincibility

#lightning storm
execute if entity @s[scores={storm=..9999}] run function sprint_racer:items/item_tick/lightning_storm

#anvil (MOVED TO sprint_racer:_timescale)
#execute if entity @e[type=!marker,type=!armor_stand,scores={anvil=..999}] run function sprint_racer:items/item_tick/anvil_player
#execute as @e[type=armor_stand,tag=anvil] at @s run function sprint_racer:items/item_tick/anvil_entity


#elytra
execute as @a[scores={elytraTimer=1..}] at @s run function sprint_racer:items/item_tick/elytra

#chicken mine
#execute if entity @e[tag=chickenmine] run function sprint_racer:items/item_tick/chicken_mine
#execute if entity @e[tag=cminezombie] run function sprint_racer:items/item_tick/chicken_mine_zombie

#tnt
#execute if entity @e[type=tnt] run function sprint_racer:items/item_tick/tnt

#projectile safety cooldown
scoreboard players remove @e[scores={projectileSafe=1..}] projectileSafe 1
scoreboard players remove @e[scores={lightningSafe=1..}] lightningSafe 1


#slime and magma traps
execute as @e[tag=slimetrap,type=armor_stand] at @s run function sprint_racer:items/item_tick/slime_trap
execute as @e[tag=magmatrap,type=armor_stand] at @s run function sprint_racer:items/item_tick/magma_trap

#generic "electrocution" effect
execute if entity @e[type=!marker,type=!armor_stand,limit=1,scores={electrocute=..999}] as @e[type=!marker,type=!armor_stand,scores={electrocute=..999}] at @s run function sprint_racer:items/item_tick/electrocute

#generic "burn" effect
execute if entity @e[type=!marker,type=!armor_stand,limit=1,scores={burn=..999}] as @e[type=!marker,type=!armor_stand,scores={burn=..999}] at @s run function sprint_racer:items/item_tick/burn

#some projectiles...
execute as @e[type=snowball,tag=!mHitbox] at @s run function sprint_racer:items/item_tick/snowball
execute as @e[tag=missile,type=armor_stand] at @s run function sprint_racer:items/item_tick/missile