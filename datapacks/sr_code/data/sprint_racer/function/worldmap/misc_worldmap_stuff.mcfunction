execute if block 2464 101 271 air if block 2464 98 262 air run function sprint_racer:worldmap/quick_select_tick
execute if block 2464 101 271 air if block 2464 98 262 air run function sprint_racer:worldmap/quick_select_tick_echo
execute if score #halftick value matches 1 if block 2464 101 271 air if block 2464 98 262 air run function sprint_racer:worldmap/quick_select_tick_echo
execute if score #halftick value matches 1 if block 2464 101 271 air if block 2464 98 262 air run function sprint_racer:worldmap/quick_select_tick_echo

#save warp location for each worldmap stand (quick select)
#IF YOU NEED TO CHANGE LOCATIONS OF STUFF, UN-COMMENT THIS LINE
#execute as @e[type=armor_stand,tag=trackminimap] at @s run function sprint_racer:worldmap/save_stand_warp_location


#really weird bug caused by chunk loading
kill @e[type=armor_stand,tag=floatup,x=2463,y=91,z=262,dx=17,dy=20,dz=11]


#cotton void = cheat 38
#underworld = cheat 46
#praia de abril = cheat 56

###gates
scoreboard players add #gateCheck value 1
execute if score #gateCheck value matches 20.. run scoreboard players set #gateCheck value 0

#cotton void
execute if score #gateCheck value matches 0 if block 2381 96 -6 smooth_stone_slab if block 2386 102 -6 smooth_stone_slab if entity @e[type=armor_stand,tag=cheats,tag=38] if entity @e[tag=wmTextCV,type=armor_stand] run function sprint_racer:worldmap/gates/cotton_void_open
execute if score #gateCheck value matches 0 if block 2381 96 -6 air if block 2386 102 -6 air unless entity @e[type=armor_stand,tag=cheats,tag=38] if entity @e[tag=wmTextCV,type=armor_stand] run function sprint_racer:worldmap/gates/cotton_void_close

#underworld
execute if score #gateCheck value matches 5 if block 2411 96 259 smooth_stone_slab if block 2416 102 259 smooth_stone_slab if entity @e[type=armor_stand,tag=cheats,tag=46] if entity @e[tag=wmTextUW,type=armor_stand] run function sprint_racer:worldmap/gates/underworld_open
execute if score #gateCheck value matches 5 if block 2411 96 259 air if block 2416 102 259 air unless entity @e[type=armor_stand,tag=cheats,tag=46] if entity @e[tag=wmTextUW,type=armor_stand] run function sprint_racer:worldmap/gates/underworld_close

#praia de abril
execute if score #gateCheck value matches 10 if block 2527 96 259 smooth_stone_slab if block 2532 102 259 smooth_stone_slab if entity @e[type=armor_stand,tag=cheats,tag=56] if entity @e[tag=wmTextPC,type=armor_stand] run function sprint_racer:worldmap/gates/praia_de_abril_classico_open
execute if score #gateCheck value matches 10 if block 2527 96 259 air if block 2532 102 259 air unless entity @e[type=armor_stand,tag=cheats,tag=56] if entity @e[tag=wmTextPC,type=armor_stand] run function sprint_racer:worldmap/gates/praia_de_abril_classico_close

#casino chase (hidden on realms)
execute if score #gateCheck value matches 15 if block 2499 74 202 glowstone if block 2518 92 202 air if block 2529 92 202 air if block 2499 92 215 air if block 2518 92 215 air if block 2529 92 215 air if block 2499 92 228 air if block 2518 92 228 air if block 2529 92 228 air if entity @e[tag=w,type=armor_stand,tag=realms] run function sprint_racer:worldmap/gates/casino_chase_hide
execute if score #gateCheck value matches 15 if block 2499 74 202 redstone_block if block 2518 92 202 air if block 2529 92 202 air if block 2499 92 215 air if block 2518 92 215 air if block 2529 92 215 air if block 2499 92 228 air if block 2518 92 228 air if block 2529 92 228 air if entity @e[tag=w,type=armor_stand,tag=!realms] run function sprint_racer:worldmap/gates/casino_chase_show