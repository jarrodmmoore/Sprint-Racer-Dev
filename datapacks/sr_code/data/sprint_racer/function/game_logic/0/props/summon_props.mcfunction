kill @e[tag=lobbyprop]
kill @e[tag=cDisplay]
kill @e[tag=cDisplay2]
scoreboard players set #lobby_ring value 0

#item frames
function sprint_racer:game_logic/0/props/summon_item_frames
#execute as @e[type=item_frame,tag=fixframe] run data merge entity @s {ItemRotation:0b,Invulnerable:1b,Silent:1b}


#time attack medal crown
function sprint_racer:game_logic/0/props/time_attack_crowns

#clear the free roam boardwalk
fill 1500 126 407 1505 129 411 air


#nodes
function sprint_racer:game_logic/0/props/summon_nodes


#item chests
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=halftick] run scoreboard players set @e[tag=node,tag=itemchest,x=1610,y=87,z=406,distance=..125] itemBlockState 100
execute if score #halftick value matches 1 run schedule function sprint_racer:game_logic/0/props/halftick_item_chest_spawn 60t
kill @e[tag=itemcontainer]


#floating texts
function sprint_racer_language:lobby/floating_texts
function sprint_racer_language:_dlc_2/lobby/discord_ad
function sprint_racer_language:_dlc_2/lobby/music_ad
function sprint_racer_language:_dlc_3/lobby/floating_texts


#place or remove options signs based on map mode
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms] run function sprint_racer_language:lobby/options/restore_options_signs
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms] run function sprint_racer_language:_dlc_1/lobby/options/restore_options_signs
#execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms] run function sprint_racer_language:_dlc_3/lobby/options/restore_options_signs
function sprint_racer_language:_dlc_2/lobby/options/restore_options_signs
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms] run function sprint_racer:game_logic/0/props/remove_options_signs


#hide the save state room when in realms mode
execute unless block 1610 88 454 black_wool if entity @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms] run fill 1610 88 454 1611 91 454 black_wool
execute if block 1610 88 454 black_wool if entity @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!realms] run fill 1610 88 454 1611 91 454 air


#flamingo
summon armor_stand 1658 89 400 {Tags:["lobbyprop","creditstand"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[94.0f,0.0f],equipment:{feet:{id:"leather_boots",count:1,components:{"minecraft:dyed_color":6513507}},legs:{id:"leather_leggings",count:1,components:{"minecraft:dyed_color":2783345}},chest:{id:"leather_chestplate",count:1,components:{"minecraft:dyed_color":4045012}},head:{id:"player_head",count:1,components:{"minecraft:profile":{id:[I;-776163509,591153380,-1784155888,1985339860],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTNjOGIwYmY3NTAwNGNmZGI0ZWE1YTExZTU4NTc5M2Y1OWRiMTQ0ODY1OGI3OTdiMjQwMzNkN2IxYzUxMDlmYSJ9fX0="}]}}},mainhand:{id:"chain_command_block",count:1},offhand:{id:"iron_pickaxe",count:1}},CustomName:{text:"Flamingosaurus",color:"dark_aqua"},CustomNameVisible:1b,DisabledSlots:2039583,Pose:{Head:[13.0f,0.0f,344.0f],RightLeg:[339.0f,0.0f,13.0f],LeftArm:[0.0f,254.0f,212.0f],RightArm:[350.0f,199.0f,28.0f]}}

#vio
summon armor_stand 1658 89 412 {Tags:["lobbyprop","creditstand"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[94.0f,0.0f],equipment:{feet:{id:"leather_boots",count:1,components:{"minecraft:dyed_color":13016304}},legs:{id:"iron_leggings",count:1},chest:{id:"leather_chestplate",count:1,components:{"minecraft:dyed_color":14223833}},head:{id:"player_head",count:1,components:{"minecraft:profile":{id:[I;1639589553,1176325500,-1457278212,-50348311],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODE5NjllNWVlZDViOTUwZWU0ZWI4ZjkxNDUzNWVmY2FiMGU4Y2UzNTE5ZDZkNWM3MTY2Nzg2Njc0YzhhOWFhYyJ9fX0="}]}}},offhand:{id:"poppy",count:1}},CustomName:{text:"AriaZeroQueen",color:"light_purple"},CustomNameVisible:1b,DisabledSlots:2039583,Pose:{Head:[360.0f,0.0f,13.0f],LeftLeg:[0.0f,0.0f,341.0f],RightLeg:[0.0f,0.0f,4.0f],LeftArm:[0.0f,0.0f,267.0f],RightArm:[346.0f,0.0f,144.0f]}}

#jayjo
summon armor_stand 1658 89 395 {Tags:["lobbyprop","creditstand"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[64.0f,0.0f],equipment:{feet:{id:"leather_boots",count:1,components:{"minecraft:dyed_color":16751918}},legs:{id:"leather_leggings",count:1,components:{"minecraft:dyed_color":10244864}},chest:{id:"leather_chestplate",count:1,components:{"minecraft:dyed_color":16746496}},head:{id:"player_head",count:1,components:{"minecraft:profile":{id:[I;-1770226705,-376551727,-1612978913,-1703174767],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzAxMTBjYjcyMTg4NzUzZjBhNjNlZTc3N2Y4NmUzMGUyYjAwZDQyZDk5MjcxMzNmNTM1ZTU3NTRlYzhmZjhlZSJ9fX0="}]}}}},CustomName:{text:"Jayjo_",color:"gold"},CustomNameVisible:1b,DisabledSlots:2039583,Pose:{Head:[339.0f,15.0f,0.0f],LeftLeg:[282.0f,350.0f,0.0f],RightLeg:[64.0f,354.0f,0.0f],LeftArm:[181.0f,0.0f,23.0f],RightArm:[173.0f,0.0f,303.0f]}}

#mcfilms
summon armor_stand 1658 89 393 {Tags:["lobbyprop","creditstand"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[31.0f,0.0f],equipment:{feet:{id:"leather_boots",count:1,components:{"minecraft:dyed_color":2555878}},legs:{id:"leather_leggings",count:1,components:{"minecraft:dyed_color":5332090}},chest:{id:"leather_chestplate",count:1,components:{"minecraft:dyed_color":1572836}},head:{id:"player_head",count:1,components:{"minecraft:profile":{id:[I;-322471356,-2017244998,-2087427627,-850513594],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjY1ZjRjYmZjY2FhMTU1YzMzNGFhY2JiYmEyNDNlMTMwODE5MTg4YTQ4NjBiYmRhODM3ZDc1YzE5MTQwMDRjMiJ9fX0="}]}}}},CustomName:{text:"MCFilms",color:"aqua"},CustomNameVisible:1b,DisabledSlots:2039583,Pose:{Head:[0.0f,32.0f,0.0f],LeftArm:[322.0f,0.0f,344.0f],RightArm:[2.0f,0.0f,356.0f]}}

#frenderman
summon armor_stand 1652 89 394 {Tags:["lobbyprop","creditstand"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[30.0f,0.0f],equipment:{feet:{id:"leather_boots",count:1,components:{"minecraft:dyed_color":11776947}},legs:{id:"leather_leggings",count:1,components:{"minecraft:dyed_color":4901076}},chest:{id:"leather_chestplate",count:1,components:{"minecraft:dyed_color":2697513}},head:{id:"player_head",count:1,components:{"minecraft:profile":{id:[I;-1198238754,658918132,-1881841789,32414310],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTAxM2VjYjc1OWY0ZTIzOGNlMzIxMTJiYjVhYmU3ZjhlOWU2ODBjNDdlNjM0NjE5OTk4ZmM5MzNmOGM3OWQ3YyJ9fX0="}]}}}},CustomName:{text:"Frenderman",color:"dark_purple"},CustomNameVisible:1b,DisabledSlots:2039583,Pose:{Head:[10.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,340.0f],RightLeg:[0.0f,0.0f,20.0f],LeftArm:[0.0f,0.0f,320.0f],RightArm:[0.0f,0.0f,40.0f]}}

#extra track designers
summon armor_stand 1658 85 418 {Tags:["lobbyprop","creditstand","creditcycle","cc1"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[124.0f,0.0f],equipment:{feet:{id:"leather_boots",count:1,components:{"minecraft:dyed_color":1819709}},legs:{id:"leather_leggings",count:1,components:{"minecraft:dyed_color":8874304}},chest:{id:"leather_chestplate",count:1,components:{"minecraft:dyed_color":2800165}},head:{id:"player_head",count:1,components:{"minecraft:profile":{id:[I;6123235,1352877686,-1301202913,102272756],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7ImlkIjoiMDJiMzViYzJmZmJmNDkxYmI2NzFiYTE4MDAwMzEyNGMiLCJ0eXBlIjoiU0tJTiIsInVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmQ2OTk0NTVhMWM3NWJmOGE3NDA1N2E3MDdkMGEyNTFlNWI1MDE0N2ZjODYxZTI5ZmQxNmZmOGIyMTA5MzM0NSIsInByb2ZpbGVJZCI6IjUwMmUwMDFkNWRkOTQ4MzBhZmQ5Y2RjODI3NTRiYzQ4IiwidGV4dHVyZUlkIjoiYmQ2OTk0NTVhMWM3NWJmOGE3NDA1N2E3MDdkMGEyNTFlNWI1MDE0N2ZjODYxZTI5ZmQxNmZmOGIyMTA5MzM0NSJ9fSwic2tpbiI6eyJpZCI6IjAyYjM1YmMyZmZiZjQ5MWJiNjcxYmExODAwMDMxMjRjIiwidHlwZSI6IlNLSU4iLCJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2JkNjk5NDU1YTFjNzViZjhhNzQwNTdhNzA3ZDBhMjUxZTViNTAxNDdmYzg2MWUyOWZkMTZmZjhiMjEwOTMzNDUiLCJwcm9maWxlSWQiOiI1MDJlMDAxZDVkZDk0ODMwYWZkOWNkYzgyNzU0YmM0OCIsInRleHR1cmVJZCI6ImJkNjk5NDU1YTFjNzViZjhhNzQwNTdhNzA3ZDBhMjUxZTViNTAxNDdmYzg2MWUyOWZkMTZmZjhiMjEwOTMzNDUifSwiY2FwZSI6bnVsbH0="}]}}}},CustomName:{text:"ReflectedMantis",color:"green"},CustomNameVisible:false,DisabledSlots:2039583,Pose:{Head:[0.0f,0.0f,352.0f],LeftLeg:[26.0f,0.0f,0.0f],RightLeg:[331.0f,0.0f,0.0f],LeftArm:[23.0f,0.0f,0.0f],RightArm:[320.0f,23.0f,0.0f]}}
summon armor_stand 1658 85 418 {Tags:["lobbyprop","creditstand","creditcycle","cc2"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[120.0f,0.0f],equipment:{feet:{id:"leather_boots",count:1,components:{"minecraft:dyed_color":8738584}},legs:{id:"leather_leggings",count:1,components:{"minecraft:dyed_color":2177517}},chest:{id:"leather_chestplate",count:1,components:{"minecraft:dyed_color":16721446}},head:{id:"player_head",count:1,components:{"minecraft:profile":{id:[I;1946452310,239552006,-1444951854,798265932],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7ImlkIjoiNjZmYWJlMWRmM2MxNDczMTk1OTIxZTg4YjMyMjgyYzUiLCJ0eXBlIjoiU0tJTiIsInVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjU4MGExNTZlMzU4NDIwZjAxMGE1MmEyZTRkYzRkZTYwODk1NzEyOWNkYWUyOTA4ZjUxNzRiNmExOTY4NDQ0MCIsInByb2ZpbGVJZCI6IjM5NzBmOThlOWRmNzQ4ZmY5NTBlNzg4ZWVmNGQzNTY2IiwidGV4dHVyZUlkIjoiNjU4MGExNTZlMzU4NDIwZjAxMGE1MmEyZTRkYzRkZTYwODk1NzEyOWNkYWUyOTA4ZjUxNzRiNmExOTY4NDQ0MCJ9fSwic2tpbiI6eyJpZCI6IjY2ZmFiZTFkZjNjMTQ3MzE5NTkyMWU4OGIzMjI4MmM1IiwidHlwZSI6IlNLSU4iLCJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzY1ODBhMTU2ZTM1ODQyMGYwMTBhNTJhMmU0ZGM0ZGU2MDg5NTcxMjljZGFlMjkwOGY1MTc0YjZhMTk2ODQ0NDAiLCJwcm9maWxlSWQiOiIzOTcwZjk4ZTlkZjc0OGZmOTUwZTc4OGVlZjRkMzU2NiIsInRleHR1cmVJZCI6IjY1ODBhMTU2ZTM1ODQyMGYwMTBhNTJhMmU0ZGM0ZGU2MDg5NTcxMjljZGFlMjkwOGY1MTc0YjZhMTk2ODQ0NDAifSwiY2FwZSI6bnVsbH0="}]}}}},CustomName:{text:"Marioman237",color:"red"},CustomNameVisible:false,DisabledSlots:2039583,Pose:{LeftLeg:[271.0f,0.0f,0.0f],RightLeg:[47.0f,0.0f,0.0f],LeftArm:[224.0f,0.0f,0.0f],RightArm:[49.0f,0.0f,0.0f]}}
summon armor_stand 1658 85 418 {Tags:["lobbyprop","creditstand","creditcycle","cc3"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[118.0f,0.0f],equipment:{feet:{id:"leather_boots",count:1,components:{"minecraft:dyed_color":1842204}},legs:{id:"leather_leggings",count:1,components:{"minecraft:dyed_color":4013373}},chest:{id:"leather_chestplate",count:1,components:{"minecraft:dyed_color":16753968}},head:{id:"player_head",count:1,components:{"minecraft:profile":{id:[I;136629800,1959153169,-1856230955,-2051696394],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDhmYTZhNDdmMDY4NjRhYjU4ZDEzY2Y1MWZhNDU1ZDAwYmEyNWUxZDRhYTkyZmJhNDRmYTRkOTM4YmY2YWI5MSJ9fX0="}]}}},mainhand:{id:"wooden_axe",count:1}},CustomName:{text:"Mezimo",color:"gold"},CustomNameVisible:false,DisabledSlots:2039583,Pose:{Head:[0.0f,0.0f,352.0f],RightLeg:[11.0f,303.0f,0.0f],LeftArm:[30.0f,291.0f,0.0f],RightArm:[28.0f,64.0f,0.0f]}}
summon armor_stand 1658 85 418 {Tags:["lobbyprop","creditstand","creditcycle","cc4"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[91.0f,0.0f],equipment:{feet:{id:"leather_boots",count:1,components:{"minecraft:dyed_color":2555878}},legs:{id:"leather_leggings",count:1,components:{"minecraft:dyed_color":5332090}},chest:{id:"leather_chestplate",count:1,components:{"minecraft:dyed_color":1572836}},head:{id:"player_head",count:1,components:{"minecraft:profile":{id:[I;1344537376,-1874638201,-1501584239,-33926177],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjY1ZjRjYmZjY2FhMTU1YzMzNGFhY2JiYmEyNDNlMTMwODE5MTg4YTQ4NjBiYmRhODM3ZDc1YzE5MTQwMDRjMiJ9fX0="}]}}}},CustomName:{text:"MCFilms",color:"aqua"},CustomNameVisible:false,DisabledSlots:2039583,Pose:{Head:[0.0f,32.0f,0.0f],LeftArm:[322.0f,0.0f,344.0f],RightArm:[2.0f,0.0f,356.0f]}}
summon armor_stand 1658 85 418 {Tags:["lobbyprop","creditstand","creditcycle","cc5"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[120.0f,0.0f],equipment:{feet:{id:"leather_boots",count:1,components:{"minecraft:dyed_color":16751918}},legs:{id:"leather_leggings",count:1,components:{"minecraft:dyed_color":10244864}},chest:{id:"leather_chestplate",count:1,components:{"minecraft:dyed_color":16746496}},head:{id:"player_head",count:1,components:{"minecraft:profile":{id:[I;-2063984756,-570735511,-2112425940,1220412088],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzAxMTBjYjcyMTg4NzUzZjBhNjNlZTc3N2Y4NmUzMGUyYjAwZDQyZDk5MjcxMzNmNTM1ZTU3NTRlYzhmZjhlZSJ9fX0="}]}}}},CustomName:{text:"Jayjo_",color:"gold"},CustomNameVisible:false,DisabledSlots:2039583,Pose:{Head:[339.0f,15.0f,0.0f],LeftLeg:[282.0f,350.0f,0.0f],RightLeg:[64.0f,354.0f,0.0f],LeftArm:[181.0f,0.0f,23.0f],RightArm:[173.0f,0.0f,303.0f]}}
summon armor_stand 1658 85 418 {Tags:["lobbyprop","creditstand","creditcycle","cc6"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[112.0f,0.0f],equipment:{feet:{id:"leather_boots",count:1,components:{"minecraft:dyed_color":1596633}},legs:{id:"leather_leggings",count:1,components:{"minecraft:dyed_color":1514066}},chest:{id:"leather_chestplate",count:1,components:{"minecraft:dyed_color":5352161}},head:{id:"player_head",count:1,components:{"minecraft:profile":{id:[I;-909926115,-1488632272,-1321308742,-1683851238],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjM4YzQ2MThhMTllMzAzOGZjNWJjNjhjOGEyZjBmZDQ5ZWQxZjdhNDFlNDJkMjRlZDVkY2FiYjFhNzkzOGNlOSJ9fX0="}]}}}},CustomName:{text:"JohnGlacious",color:"blue"},CustomNameVisible:false,DisabledSlots:2039583,Pose:{Head:[0.0f,34.0f,0.0f],LeftLeg:[11.0f,0.0f,0.0f],RightLeg:[346.0f,0.0f,0.0f],LeftArm:[292.0f,0.0f,0.0f],RightArm:[30.0f,0.0f,0.0f]}}
summon armor_stand 1658 85 418 {Tags:["lobbyprop","creditstand","creditcycle","cc7"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[115.0f,0.0f],equipment:{feet:{id:"leather_boots",count:1,components:{"minecraft:dyed_color":16777215}},legs:{id:"leather_leggings",count:1,components:{"minecraft:dyed_color":16745934}},chest:{id:"leather_chestplate",count:1,components:{"minecraft:dyed_color":58098}},head:{id:"player_head",count:1,components:{"minecraft:profile":{id:[I;2100173648,237847500,-1094423643,2127805290],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODdhNjMyNTllM2I3MDljOTZkYWU2OTdjY2M4YmMwOTE3NzFjYjU3YThlODU2NWJjM2RjZjczOTk3YWNmNDU0NiJ9fX0="}]}}},offhand:{id:"grass_block",count:1}},CustomName:{text:"SenpaiiPepe",color:"gold"},CustomNameVisible:false,DisabledSlots:2039583,Pose:{LeftArm:[0.0f,0.0f,270.0f],RightArm:[0.0f,0.0f,90.0f]}}
summon armor_stand 1658 85 418 {Tags:["lobbyprop","creditstand","creditcycle","cc8"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[115.0f,0.0f],equipment:{feet:{id:"leather_boots",count:1,components:{"minecraft:dyed_color":12255197}},legs:{id:"leather_leggings",count:1,components:{"minecraft:dyed_color":12255197}},chest:{id:"iron_chestplate",count:1},head:{id:"player_head",count:1,components:{"minecraft:profile":{id:[I;-408193948,-571915486,-1943124613,1222630270],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzQ2OGEwYWFkOWJjMjk4N2I5NDEyODNkZjJhZDUyMjc1ZTM2NjcyYzkxY2NjZjhjYjY3NzdjNWI3MGMxYzkwNCJ9fX0="}]}}}},CustomName:{text:"StraightFlex",color:"gray"},CustomNameVisible:false,DisabledSlots:2039583,Pose:{Body:[0.0f,0.0f,4.0f],Head:[0.0f,0.0f,352.0f],LeftLeg:[0.0f,0.0f,17.0f],RightLeg:[0.0f,0.0f,28.0f],LeftArm:[0.0f,0.0f,11.0f],RightArm:[0.0f,0.0f,46.0f]}}
summon armor_stand 1658 85 418 {Tags:["lobbyprop","creditstand","creditcycle","cc9"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[100.0f,0.0f],equipment:{feet:{id:"leather_boots",count:1,components:{"minecraft:dyed_color":12255197}},legs:{id:"leather_leggings",count:1,components:{"minecraft:dyed_color":12255197}},chest:{id:"leather_chestplate",count:1,components:{"minecraft:dyed_color":12255197}},head:{id:"player_head",count:1,components:{"minecraft:profile":{id:[I;-455872286,326519837,-1174601070,-469595275],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODNjM2UxZGZhN2YxY2Y2YTcxZWYwMTdmMjU2NzJkNjI1MDVhMzMyYWFmMGJkMTI4MmY3NTMyMGY1ZGU0YzE5YSJ9fX0="}]}}}},CustomName:{text:"car kid",color:"yellow"},CustomNameVisible:false,DisabledSlots:2039583,Pose:{Head:[339.0f,15.0f,0.0f],LeftLeg:[282.0f,350.0f,0.0f],RightLeg:[64.0f,354.0f,0.0f],LeftArm:[181.0f,0.0f,23.0f],RightArm:[173.0f,0.0f,303.0f]}}
summon armor_stand 1658 85 418 {Tags:["lobbyprop","creditstand","creditcycle","cc10"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[113.0f,0.0f],equipment:{feet:{id:"leather_boots",count:1,components:{"minecraft:dyed_color":15921131}},legs:{id:"leather_leggings",count:1,components:{"minecraft:dyed_color":14065246}},chest:{id:"leather_chestplate",count:1,components:{"minecraft:dyed_color":16399934}},head:{id:"player_head",count:1,components:{"minecraft:profile":{id:[I;300234455,1291338115,-2096933972,-1019919562],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmFjYTIyZGE4YjU2NzkxYTVmYzcwYTBjOGYxMGI2NmE1Y2M2OTJjODIzYzI5Y2RmYThhODU0ZjcyY2E3ODZhZCJ9fX0="}]}}},offhand:{id:"redstone",count:1}},CustomName:{text:"RedstoneBattery",color:"red"},CustomNameVisible:false,DisabledSlots:2039583,Pose:{Head:[13.0f,0.0f,344.0f],RightLeg:[339.0f,0.0f,13.0f],LeftArm:[0.0f,254.0f,212.0f],RightArm:[350.0f,199.0f,28.0f]}}
summon armor_stand 1658 85 418 {Tags:["lobbyprop","creditstand","creditcycle","cc11"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[113.0f,0.0f],equipment:{feet:{id:"leather_boots",count:1,components:{"minecraft:dyed_color":2039583}},legs:{id:"leather_leggings",count:1,components:{"minecraft:dyed_color":9981951}},chest:{id:"leather_chestplate",count:1,components:{"minecraft:dyed_color":15865986}},head:{id:"player_head",count:1,components:{"minecraft:profile":{id:[I;-850688023,1771391771,-1811498301,1400363214],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjdiOWNhYjU0YTY4MDdhMzU4M2U4NTk0MGFiOTc0MWYxMjc5M2U5ZTMxNmM2NzRhYTAzMjFjZGJjN2U2OWEzYiJ9fX0="}]}}},offhand:{id:"note_block",count:1}},CustomName:{text:"alyssonjac6",color:"#D57DF0"},CustomNameVisible:false,DisabledSlots:2039583,Pose:{LeftLeg:[0.0f,342.0f,0.0f],RightLeg:[354.0f,0.0f,0.0f],LeftArm:[323.0f,328.0f,0.0f],RightArm:[0.0f,0.0f,342.0f]}}
summon armor_stand 1658 85 418 {Tags:["lobbyprop","creditstand","creditcycle","cc12"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[115.0f,0.0f],equipment:{feet:{id:"leather_boots",count:1,components:{"minecraft:dyed_color":10617087}},legs:{id:"leather_leggings",count:1,components:{"minecraft:dyed_color":5395307}},chest:{id:"leather_chestplate",count:1,components:{"minecraft:dyed_color":5720283}},head:{id:"player_head",count:1,components:{"minecraft:profile":{id:[I;269213154,2053260077,-1269152836,-1074862549],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDg3NWVlNTYwODU0MWExYTIwMjE0MzkzMzU2MTA5NGVlMWNjZWNlNGMwZTg4ZWY5M2U5NWJjNWQ5NzEzYjk5NCJ9fX0="}]}}},mainhand:{id:"wooden_axe",count:1}},DisabledSlots:4144959,CustomName:{text:"MichaelMana",color:"light_purple"},CustomNameVisible:false,Pose:{Head:[0.0f,0.0f,356.0f],LeftLeg:[0.0f,0.0f,354.0f],LeftArm:[201.0f,0.0f,20.0f],RightArm:[0.0f,0.0f,10.0f]}}
summon armor_stand 1658 85 418 {Tags:["lobbyprop","creditstand","creditcycle","cc13"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[113.0f,0.0f],CustomName:{text:"Endermity",color:"dark_purple"},equipment:{feet:{id:"leather_boots",count:1,components:{"minecraft:dyed_color":0}},legs:{id:"leather_leggings",count:1,components:{"minecraft:dyed_color":0}},chest:{id:"leather_chestplate",count:1,components:{"minecraft:dyed_color":6430950}},head:{id:"player_head",count:1,components:{"minecraft:profile":{id:[I;-12545910,-2014819102,-1257731038,1120729912],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODQ3NjIzMTBmOWRmZTgzMjA1NTRjMDg5N2U0NzU3MjRlOThjYTVkNDgyMGM5Y2JlNmQ3NWE4YzU0MGYxOGJkMCJ9fX0="}]}}},mainhand:{id:"elytra",count:1},offhand:{id:"tnt",count:1}},DisabledSlots:4144959,Pose:{LeftLeg:[16.0f,8.0f,348.0f],RightLeg:[350.0f,14.0f,4.0f],LeftArm:[344.0f,32.0f,330.0f],RightArm:[271.0f,38.0f,26.0f]}}

execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=11a] as @e[tag=creditstand] run function sprint_racer:cheats/homing_entity_chance_rare

#credits
function sprint_racer_language:lobby/credits
tag @e[tag=up1,type=armor_stand] remove up1
tag @e[tag=up2,type=armor_stand] remove up2
function sprint_racer_language:_dlc_2/lobby/credits

#tropical fish in aquariums
summon tropical_fish 1667 91 393 {Tags:["lobbyprop"],PersistenceRequired:1b,Variant:65792}
summon tropical_fish 1667 91 393 {Tags:["lobbyprop"],PersistenceRequired:1b,Variant:151388672}
summon tropical_fish 1667 91 393 {Tags:["lobbyprop"],PersistenceRequired:1b,Variant:218825729}
summon tropical_fish 1667 91 393 {Tags:["lobbyprop"],PersistenceRequired:1b,Variant:67568896}

summon tropical_fish 1667 91 419 {Tags:["lobbyprop"],PersistenceRequired:1b,Variant:202310144}
summon tropical_fish 1667 91 419 {Tags:["lobbyprop"],PersistenceRequired:1b,Variant:100925441}
summon tropical_fish 1667 91 419 {Tags:["lobbyprop"],PersistenceRequired:1b,Variant:984320}
summon tropical_fish 1667 91 419 {Tags:["lobbyprop"],PersistenceRequired:1b,Variant:656129}

#clock on wall
summon item_display 1596 90 356 {Tags:["lobbyprop"],UUID:[I;2345,54670,3450,1230],item_display:"head",item:{id:"minecraft:clock",count:1}}
execute as 00000929-0000-d58e-0000-0d7a000004ce at @s run tp @s ~ ~.5 ~ 180 0

#preview items
summon item 1601 80 422 {Tags:["lobbyprop","itempreview","ipBB"],PickupDelay:32767,Age:-32768,NoGravity:0b,Invulnerable:1b,Item:{id:"minecraft:wooden_sword",count:1,components:{"minecraft:item_model":"sr/item/battle_bat_drop","minecraft:custom_data":{stay:1b}}}}

summon item 1603 80 422 {Tags:["lobbyprop","itempreview","ip1"],PickupDelay:32767,Age:-32768,NoGravity:0b,Invulnerable:1b,Item:{id:"minecraft:snowball",count:3,components:{"minecraft:custom_data":{stay:1b}}}}
summon item 1605 80 422 {Tags:["lobbyprop","itempreview","ip2"],PickupDelay:32767,Age:-32768,NoGravity:0b,Invulnerable:1b,Item:{id:"minecraft:dispenser",count:3,components:{"minecraft:custom_data":{stay:1b}}}}
summon item 1607 80 422 {Tags:["lobbyprop","itempreview","ip3"],PickupDelay:32767,Age:-32768,NoGravity:0b,Invulnerable:1b,Item:{id:"minecraft:tnt",count:3,components:{"minecraft:custom_data":{stay:1b}}}}
summon item 1609 80 422 {Tags:["lobbyprop","itempreview","ip4"],PickupDelay:32767,Age:-32768,NoGravity:0b,Invulnerable:1b,Item:{id:"minecraft:golden_sword",count:1,components:{"minecraft:custom_data":{stay:1b}}}}
summon item 1611 80 422 {Tags:["lobbyprop","itempreview","ip5"],PickupDelay:32767,Age:-32768,NoGravity:0b,Invulnerable:1b,Item:{id:"minecraft:apple",count:1,components:{"minecraft:custom_data":{stay:1b}}}}
summon item 1613 80 422 {Tags:["lobbyprop","itempreview","ip6"],PickupDelay:32767,Age:-32768,NoGravity:0b,Invulnerable:1b,Item:{id:"minecraft:glass",count:1,components:{"minecraft:custom_data":{stay:1b}}}}
summon item 1615 80 422 {Tags:["lobbyprop","itempreview","ip7"],PickupDelay:32767,Age:-32768,NoGravity:0b,Invulnerable:1b,Item:{id:"minecraft:iron_ingot",count:1,components:{"minecraft:custom_data":{stay:1b}}}}
summon item 1617 80 422 {Tags:["lobbyprop","itempreview","ip8"],PickupDelay:32767,Age:-32768,NoGravity:0b,Invulnerable:1b,Item:{id:"minecraft:totem_of_undying",count:1,components:{"minecraft:custom_data":{stay:1b}}}}
summon item 1619 80 422 {Tags:["lobbyprop","itempreview","ip9"],PickupDelay:32767,Age:-32768,NoGravity:0b,Invulnerable:1b,Item:{id:"minecraft:emerald",count:1,components:{"minecraft:custom_data":{stay:1b}}}}
summon item 1621 80 422 {Tags:["lobbyprop","itempreview","ip10"],PickupDelay:32767,Age:-32768,NoGravity:0b,Invulnerable:1b,Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_data":{stay:1b}}}}

summon item 1603 80 433 {Tags:["lobbyprop","itempreview","ip11"],PickupDelay:32767,Age:-32768,NoGravity:0b,Invulnerable:1b,Item:{id:"minecraft:ender_pearl",count:3,components:{"minecraft:custom_data":{stay:1b}}}}
summon item 1605 80 433 {Tags:["lobbyprop","itempreview","ip12"],PickupDelay:32767,Age:-32768,NoGravity:0b,Invulnerable:1b,Item:{id:"minecraft:elytra",count:1,components:{"minecraft:custom_data":{stay:1b}}}}
summon item 1607 80 433 {Tags:["lobbyprop","itempreview","ip13"],PickupDelay:32767,Age:-32768,NoGravity:0b,Invulnerable:1b,Item:{id:"minecraft:slime_block",count:5,components:{"minecraft:custom_data":{stay:1b}}}}
summon item 1609 80 433 {Tags:["lobbyprop","itempreview","ip14"],PickupDelay:32767,Age:-32768,NoGravity:0b,Invulnerable:1b,Item:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:custom_data":{stay:1b}}}}
summon item 1611 80 433 {Tags:["lobbyprop","itempreview","ip15"],PickupDelay:32767,Age:-32768,NoGravity:0b,Invulnerable:1b,Item:{id:"minecraft:bricks",count:1,components:{"minecraft:item_model":"sr/item/chicken_mine","minecraft:custom_data":{stay:1b}}}}
summon item 1613 80 433 {Tags:["lobbyprop","itempreview","ip16"],PickupDelay:32767,Age:-32768,NoGravity:0b,Invulnerable:1b,Item:{id:"minecraft:trapped_chest",count:1,components:{"minecraft:custom_data":{stay:1b}}}}
summon item 1615 80 433 {Tags:["lobbyprop","itempreview","ip17"],PickupDelay:32767,Age:-32768,NoGravity:0b,Invulnerable:1b,Item:{id:"minecraft:anvil",count:1,components:{"minecraft:custom_data":{stay:1b}}}}
summon item 1617 80 433 {Tags:["lobbyprop","itempreview","ip18"],PickupDelay:32767,Age:-32768,NoGravity:0b,Invulnerable:1b,Item:{id:"minecraft:black_terracotta",count:1,components:{"minecraft:item_model":"sr/item/enderman_thief","minecraft:custom_data":{stay:1b}}}}
summon item 1619 80 433 {Tags:["lobbyprop","itempreview","ip19"],PickupDelay:32767,Age:-32768,NoGravity:0b,Invulnerable:1b,Item:{id:"minecraft:blue_terracotta",count:1,components:{"minecraft:item_model":"sr/item/blinding_squid","minecraft:custom_data":{stay:1b}}}}
summon item 1621 80 433 {Tags:["lobbyprop","itempreview","ip20"],PickupDelay:32767,Age:-32768,NoGravity:0b,Invulnerable:1b,Item:{id:"minecraft:blaze_rod",count:1,components:{"minecraft:custom_data":{stay:1b}}}}


#summon random lookin villagers to walk around
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] rNumber = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,sort=random,type=armor_stand,scores={rNumber=1..4}] rNumber
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=1..2}] run summon villager 1585 97 350 {Tags:["babyVillager","lobbyprop","walk"],VillagerData:{profession:"nitwit",level:99,type:"taiga"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b,Age:-9999999}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=2..3}] run summon villager 1586 97 349 {Tags:["babyVillager","lobbyprop","run"],VillagerData:{profession:"nitwit",level:99,type:"savanna"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b,Age:-9999999}

scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] rNumber = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,sort=random,type=armor_stand,scores={rNumber=1..5}] rNumber
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=1..2}] run summon villager 1602 88 371 {Tags:["lobbyprop","walk"],VillagerData:{profession:"mason",level:99,type:"taiga"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=2..3}] run summon villager 1617 88 433 {Tags:["lobbyprop","walk"],VillagerData:{profession:"farmer",level:99,type:"desert"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}

scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] rNumber = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,sort=random,type=armor_stand,scores={rNumber=1..3}] rNumber
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=1}] run summon villager 1645 88 416 {Tags:["lobbyprop","walk"],VillagerData:{profession:"cartographer",level:99,type:"plains"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=2}] run summon villager 1611 88 389 {Tags:["lobbyprop","run"],VillagerData:{profession:"nitwit",level:99,type:"savanna"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}

scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] rNumber = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,sort=random,type=armor_stand,scores={rNumber=1..5}] rNumber
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=1}] run summon villager 1594 88 406 {Tags:["lobbyprop","walk"],VillagerData:{profession:"toolsmith",level:99,type:"jungle"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=2}] run summon villager 1626 88 406 {Tags:["lobbyprop","run"],VillagerData:{profession:"cleric",level:99,type:"snow"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}

scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] rNumber = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,sort=random,type=armor_stand,scores={rNumber=1..3}] rNumber
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=1}] run summon villager 1598 97 460 {Tags:["lobbyprop","walk"],VillagerData:{profession:"toolsmith",level:99,type:"jungle"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=2}] run summon villager 1598 97 464 {Tags:["lobbyprop","run"],VillagerData:{profession:"cleric",level:99,type:"snow"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}

#1 in 20 chance to spawn fletcher gang
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] rNumber = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,sort=random,type=armor_stand,scores={rNumber=1..20}] rNumber
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=20}] run summon villager 1570 88 389 {Tags:["lobbyprop","walk"],VillagerData:{profession:"fletcher",level:99,type:"snow"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=20}] run summon villager 1572 88 389 {Tags:["lobbyprop","walk"],VillagerData:{profession:"fletcher",level:99,type:"snow"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=20}] run summon villager 1574 88 389 {Tags:["lobbyprop","walk"],VillagerData:{profession:"fletcher",level:99,type:"snow"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=20}] run summon villager 1576 88 389 {Tags:["lobbyprop","walk"],VillagerData:{profession:"fletcher",level:99,type:"snow"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=20}] run summon villager 1578 88 389 {Tags:["lobbyprop","walk"],VillagerData:{profession:"fletcher",level:99,type:"snow"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=20}] run summon villager 1580 88 389 {Tags:["lobbyprop","walk"],VillagerData:{profession:"fletcher",level:99,type:"snow"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}

#1 in 100 chance to spawn Mom + kids (this can't overlap with fletcher gang)
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math2 = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,sort=random,type=armor_stand,scores={rNumber=1..5}] rNumber
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=1,math2=5}] run summon villager 1580 88 387 {Tags:["lobbyprop","run"],VillagerData:{profession:"librarian",level:99,type:"plains"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b,CustomNameVisible:1b,CustomName:{text:"Mom"}}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=1,math2=5}] run summon villager 1578 88 387 {Tags:["babyVillager","lobbyprop","run"],VillagerData:{profession:"nitwit",level:99,type:"swamp"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b,Age:-6000}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=1,math2=5}] run summon villager 1576 88 387 {Tags:["babyVillager","lobbyprop","run"],VillagerData:{profession:"nitwit",level:99,type:"snow"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b,Age:-12000}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=1,math2=5}] run summon villager 1574 88 387 {Tags:["babyVillager","lobbyprop","run"],VillagerData:{profession:"nitwit",level:99,type:"taiga"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b,Age:-18000}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=1,math2=5}] run summon villager 1572 88 387 {Tags:["babyVillager","lobbyprop","run"],VillagerData:{profession:"nitwit",level:99,type:"desert"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b,Age:-24000}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={rNumber=1,math2=5}] run summon villager 1570 88 387 {Tags:["babyVillager","lobbyprop","run"],VillagerData:{profession:"nitwit",level:99,type:"savanna"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b,Age:-30000}

execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=11a] as @e[tag=lobbyprop,tag=walk] run function sprint_racer:cheats/homing_entity_chance_rare
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=11a] as @e[tag=lobbyprop,tag=run] run function sprint_racer:cheats/homing_entity_chance_rare

#stationary villagers
#coffee shop
summon villager 1576 88 446 {Tags:["stationary_v","lobbyprop","facenorth","lookatplayer"],VillagerData:{profession:"armorer",level:99,type:"savanna"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
summon villager 1588 88.5 432 {Tags:["stationary_v","lobbyprop","facenorth"],VillagerData:{profession:"nitwit",level:99,type:"plains"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
summon villager 1584 88.5 437 {Tags:["stationary_v","lobbyprop","facewest"],VillagerData:{profession:"nitwit",level:99,type:"swamp"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
#bank
summon villager 1575 88.25 368 {Tags:["stationary_v","lobbyprop","facesouth","lookatplayer"],VillagerData:{profession:"cartographer",level:99,type:"plains"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
summon villager 1580 88.25 368 {Tags:["stationary_v","lobbyprop","facesouth","lookatplayer"],VillagerData:{profession:"cartographer",level:99,type:"plains"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
summon villager 1585 88.25 368 {Tags:["stationary_v","lobbyprop","facesouth","lookatplayer"],VillagerData:{profession:"cartographer",level:99,type:"plains"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
summon villager 1590 88 381 {Tags:["stationary_v","lobbyprop","facenorth"],VillagerData:{profession:"nitwit",level:99,type:"desert"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
#police station
summon villager 1602 88 367 {Tags:["stationary_v","lobbyprop","facesouth","lookatplayer"],VillagerData:{profession:"weaponsmith",level:99,type:"plains"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
summon villager 1613 88 378 {Tags:["stationary_v","lobbyprop","facenorth"],VillagerData:{profession:"weaponsmith",level:99,type:"savanna"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
summon villager 1613 88 375 {Tags:["stationary_v","lobbyprop","facesouth"],VillagerData:{profession:"weaponsmith",level:99,type:"savanna"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
#arcade
summon villager 1611 88 438 {Tags:["stationary_v","lobbyprop","facenorth","lookatplayer"],VillagerData:{profession:"fletcher",level:99,type:"swamp"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
summon villager 1612 88 439 {Tags:["stationary_v","lobbyprop","faceeast","lookatplayer"],VillagerData:{profession:"fletcher",level:99,type:"swamp"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
summon villager 1606 97 434 {Tags:["stationary_v","lobbyprop","faceeast","lookatplayer"],VillagerData:{profession:"fletcher",level:99,type:"swamp"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
summon villager 1606 97 450 {Tags:["stationary_v","lobbyprop","facesouth","lookatplayer"],VillagerData:{profession:"mason",level:99,type:"swamp"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
#staring at wall?
summon villager 1623 92 368 {Tags:["stationary_v","lobbyprop","facewest","lookatplayer"],VillagerData:{profession:"nitwit",level:99,type:"snow"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
#lap pool
summon villager 1677 87.5 370 {Tags:["stationary_v","lobbyprop","facesouth"],VillagerData:{profession:"nitwit",level:99,type:"plains"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
summon villager 1661 87.5 370 {Tags:["stationary_v","lobbyprop","faceeast"],VillagerData:{profession:"nitwit",level:99,type:"snow"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
#lazy river
summon villager 1658 87.5 433 {Tags:["stationary_v","lobbyprop","facenorth"],VillagerData:{profession:"nitwit",level:99,type:"savanna"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
summon villager 1656 87.5 440 {Tags:["stationary_v","lobbyprop","facesouth"],VillagerData:{profession:"nitwit",level:99,type:"taiga"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
summon villager 1663 87.5 443 {Tags:["stationary_v","lobbyprop","faceeast"],VillagerData:{profession:"nitwit",level:99,type:"desert"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
summon villager 1687 87.5 437 {Tags:["stationary_v","lobbyprop","facewest"],VillagerData:{profession:"nitwit",level:99,type:"desert"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
summon villager 1683 87.5 434 {Tags:["stationary_v","lobbyprop","facenorth"],VillagerData:{profession:"nitwit",level:99,type:"plains"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
#looking out on rim
summon villager 1608 97 348 {Tags:["stationary_v","lobbyprop","facenorth"],VillagerData:{profession:"weaponsmith",level:99,type:"snow"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
#lovers on the rim
summon villager 1593 97 465 {Tags:["stationary_v","lobbyprop","facesouth"],VillagerData:{profession:"shepherd",level:99,type:"taiga"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
summon villager 1592 97 465 {Tags:["stationary_v","lobbyprop","facesouth"],VillagerData:{profession:"toolsmith",level:99,type:"savanna"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
#diamond guy
summon villager 1584 97 351 {Tags:["stationary_v","lobbyprop"],Rotation:[15.0f,-25.0f],equipment:{mainhand:{id:"minecraft:diamond",count:1,components:{"minecraft:enchantment_glint_override":1b,"minecraft:attribute_modifiers":[{id:"theforbiddendiamond",operation:"add_multiplied_total",type:"movement_speed",amount:2,slot:"mainhand"}]}}},VillagerData:{profession:"minecraft:librarian",type:"minecraft:taiga"},PersistenceRequired:1b,Silent:1b,NoAI:1b,Invulnerable:1b,Offers:{}}

#assign a text message to each villager
scoreboard players set global villagerTip 1
execute positioned 1576 89 445 as @e[type=villager,tag=stationary_v,sort=nearest] run function sprint_racer:game_logic/0/props/villager_text_assign
#^ position and sort=nearest will produce a deterministic message assignment for each stationary villager

#moving villagers will get a random message
#scoreboard players set @e[type=villager,tag=!stationary_v] villagerTip 27
execute as @e[type=villager,tag=!stationary_v] run scoreboard players operation @s villagerTip = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..27}] rNumber
execute as @e[type=villager,tag=!stationary_v,scores={villagerTip=20}] run scoreboard players set @s villagerTip 1

execute as @e[tag=facewest] at @s run tp @s ~ ~ ~ 90 ~
execute as @e[tag=facenorth] at @s run tp @s ~ ~ ~ 180 ~
execute as @e[tag=faceeast] at @s run tp @s ~ ~ ~ 270 ~

#eggs
execute positioned 1574 98 444 positioned ~ ~ ~.5 run summon minecraft:armor_stand ~ ~-1.4 ~ {Tags:["cheategg","lobbyprop"],NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:dragon_egg",count:1}},CustomNameVisible:false,CustomName:{text:"SPEEDO",bold:true,italic:false}}
execute positioned 1594 92 461 positioned ~-.4 ~ ~-.4 run summon minecraft:armor_stand ~ ~-1.4 ~ {Tags:["cheategg","lobbyprop"],NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:dragon_egg",count:1}},CustomNameVisible:false,CustomName:{text:"FRIENDLYFIRE",bold:true,italic:false}}
execute positioned 1563 98 343 run summon minecraft:armor_stand ~ ~-1.4 ~ {Tags:["cheategg","lobbyprop"],NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:dragon_egg",count:1}},CustomNameVisible:false,CustomName:{text:"NOAFK",bold:true,italic:false}}
execute positioned 1578 97 372 run summon minecraft:armor_stand ~ ~-1.4 ~ {Tags:["cheategg","lobbyprop"],NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:dragon_egg",count:1}},CustomNameVisible:false,CustomName:{text:"ALWAYSSUNNY",bold:true,italic:false}}
execute if entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=17,tag=18,tag=19,tag=42,tag=43,tag=44] positioned 1580 98 438 positioned ~.5 ~ ~ run summon minecraft:armor_stand ~ ~-1.4 ~ {Tags:["cheategg","lobbyprop"],NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:dragon_egg",count:1}},CustomNameVisible:false,CustomName:{text:"CUSTOMAI",bold:true,italic:false}}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=COPPA] positioned 1580 98 451 positioned ~.5 ~ ~ run summon minecraft:armor_stand ~ ~-1.4 ~ {Tags:["cheategg","lobbyprop"],NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:dragon_egg",count:1}},CustomNameVisible:false,CustomName:{text:"SLOTLIMIT",bold:true,italic:false}}

#cheat help door opens if 30 eggs are discovered
scoreboard players set #cheats_discovered value 0
execute as @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] run function sprint_racer:cheats/count_discovered_cheats
execute unless score #cheats_discovered value matches 30.. run setblock 1577 96 452 minecraft:dark_prismarine destroy
execute if score #cheats_discovered value matches 30.. run setblock 1577 96 452 minecraft:redstone_torch

#extras and item room stuff
function sprint_racer:game_logic/0/props/spawn_preview_chest_a
function sprint_racer:game_logic/0/props/spawn_preview_chest_b
function sprint_racer:game_logic/0/props/spawn_gamemode_preview_a
function sprint_racer:game_logic/0/props/spawn_gamemode_preview_b
function sprint_racer_language:_dlc_4/lobby/extras_portal_titles
