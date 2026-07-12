#executed by w

#sans-serif circled numbers:
#➀ ➁ ➂ ➃ ➄ ➅ ➆ ➇ ➈ ➉

#these should already be calculated before running:
# #round_game_type
# #round_number
# #round_max_number

#1 (we will always assume round 1 exists)
execute store result score #mode_display value run data get storage sprint_racer:round_sequence active[0] 1
execute if score #mode_display value matches 1..3 if entity @s[tag=optChoose] run scoreboard players set #mode_display value 4
execute unless score #mode_display value matches 2..4 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo1","roundNoTP","particleA"],CustomName:{text:"➀",color:"aqua",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 2 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo1","roundNoTP","particleB"],CustomName:{text:"➀",color:"red",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 3 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo1","roundNoTP","particleD"],CustomName:{text:"➀",color:"white",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 4 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo1","roundNoTP","particleC"],CustomName:{text:"➀",color:"yellow",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score @s roundNumber matches 1 run scoreboard players operation #current_mode_display value = #mode_display value

#2
execute store result score #mode_display value run data get storage sprint_racer:round_sequence active[1] 1
execute if score #mode_display value matches 1..3 if entity @s[tag=optChoose] run scoreboard players set #mode_display value 4
execute if score #mode_display value matches 1 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo2","roundNoTP","particleA"],CustomName:{text:"➁",color:"aqua",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 2 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo2","roundNoTP","particleB"],CustomName:{text:"➁",color:"red",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 3 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo2","roundNoTP","particleD"],CustomName:{text:"➁",color:"white",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 4 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo2","roundNoTP","particleC"],CustomName:{text:"➁",color:"yellow",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score @s roundNumber matches 2 run scoreboard players operation #current_mode_display value = #mode_display value

#3
execute store result score #mode_display value run data get storage sprint_racer:round_sequence active[2] 1
execute if score #mode_display value matches 1..3 if entity @s[tag=optChoose] run scoreboard players set #mode_display value 4
execute if score #mode_display value matches 1 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo3","roundNoTP","particleA"],CustomName:{text:"➂",color:"aqua",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 2 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo3","roundNoTP","particleB"],CustomName:{text:"➂",color:"red",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 3 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo3","roundNoTP","particleD"],CustomName:{text:"➂",color:"white",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 4 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo3","roundNoTP","particleC"],CustomName:{text:"➂",color:"yellow",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score @s roundNumber matches 3 run scoreboard players operation #current_mode_display value = #mode_display value

#4
execute store result score #mode_display value run data get storage sprint_racer:round_sequence active[3] 1
execute if score #mode_display value matches 1..3 if entity @s[tag=optChoose] run scoreboard players set #mode_display value 4
execute if score #mode_display value matches 1 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo4","roundNoTP","particleA"],CustomName:{text:"➃",color:"aqua",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 2 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo4","roundNoTP","particleB"],CustomName:{text:"➃",color:"red",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 3 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo4","roundNoTP","particleD"],CustomName:{text:"➃",color:"white",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 4 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo4","roundNoTP","particleC"],CustomName:{text:"➃",color:"yellow",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score @s roundNumber matches 4 run scoreboard players operation #current_mode_display value = #mode_display value

#5
execute store result score #mode_display value run data get storage sprint_racer:round_sequence active[4] 1
execute if score #mode_display value matches 1..3 if entity @s[tag=optChoose] run scoreboard players set #mode_display value 4
execute if score #mode_display value matches 1 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo5","roundNoTP","particleA"],CustomName:{text:"➄",color:"aqua",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 2 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo5","roundNoTP","particleB"],CustomName:{text:"➄",color:"red",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 3 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo5","roundNoTP","particleD"],CustomName:{text:"➄",color:"white",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 4 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo5","roundNoTP","particleC"],CustomName:{text:"➄",color:"yellow",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score @s roundNumber matches 5 run scoreboard players operation #current_mode_display value = #mode_display value

#6
execute store result score #mode_display value run data get storage sprint_racer:round_sequence active[5] 1
execute if score #mode_display value matches 1..3 if entity @s[tag=optChoose] run scoreboard players set #mode_display value 4
execute if score #mode_display value matches 1 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo6","roundNoTP","particleA"],CustomName:{text:"➅",color:"aqua",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 2 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo6","roundNoTP","particleB"],CustomName:{text:"➅",color:"red",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 3 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo6","roundNoTP","particleD"],CustomName:{text:"➅",color:"white",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 4 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo6","roundNoTP","particleC"],CustomName:{text:"➅",color:"yellow",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score @s roundNumber matches 6 run scoreboard players operation #current_mode_display value = #mode_display value

#7
execute store result score #mode_display value run data get storage sprint_racer:round_sequence active[6] 1
execute if score #mode_display value matches 1..3 if entity @s[tag=optChoose] run scoreboard players set #mode_display value 4
execute if score #mode_display value matches 1 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo7","roundNoTP","particleA"],CustomName:{text:"➆",color:"aqua",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 2 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo7","roundNoTP","particleB"],CustomName:{text:"➆",color:"red",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 3 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo7","roundNoTP","particleD"],CustomName:{text:"➆",color:"white",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 4 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo7","roundNoTP","particleC"],CustomName:{text:"➆",color:"yellow",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score @s roundNumber matches 7 run scoreboard players operation #current_mode_display value = #mode_display value

#8
execute store result score #mode_display value run data get storage sprint_racer:round_sequence active[7] 1
execute if score #mode_display value matches 1..3 if entity @s[tag=optChoose] run scoreboard players set #mode_display value 4
execute if score #mode_display value matches 1 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo8","roundNoTP","particleA"],CustomName:{text:"➇",color:"aqua",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 2 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo8","roundNoTP","particleB"],CustomName:{text:"➇",color:"red",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 3 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo8","roundNoTP","particleD"],CustomName:{text:"➇",color:"white",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 4 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo8","roundNoTP","particleC"],CustomName:{text:"➇",color:"yellow",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score @s roundNumber matches 8 run scoreboard players operation #current_mode_display value = #mode_display value

#9
execute store result score #mode_display value run data get storage sprint_racer:round_sequence active[8] 1
execute if score #mode_display value matches 1..3 if entity @s[tag=optChoose] run scoreboard players set #mode_display value 4
execute if score #mode_display value matches 1 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo9","roundNoTP","particleA"],CustomName:{text:"➈",color:"aqua",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 2 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo9","roundNoTP","particleB"],CustomName:{text:"➈",color:"red",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 3 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo9","roundNoTP","particleD"],CustomName:{text:"➈",color:"white",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 4 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo9","roundNoTP","particleC"],CustomName:{text:"➈",color:"yellow",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score @s roundNumber matches 9 run scoreboard players operation #current_mode_display value = #mode_display value

#10
execute store result score #mode_display value run data get storage sprint_racer:round_sequence active[9] 1
execute if score #mode_display value matches 1..3 if entity @s[tag=optChoose] run scoreboard players set #mode_display value 4
execute if score #mode_display value matches 1 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo10","roundNoTP","particleA"],CustomName:{text:"➉",color:"aqua",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 2 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo10","roundNoTP","particleB"],CustomName:{text:"➉",color:"red",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 3 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo10","roundNoTP","particleD"],CustomName:{text:"➉",color:"white",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #mode_display value matches 4 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundNo10","roundNoTP","particleC"],CustomName:{text:"➉",color:"yellow",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score @s roundNumber matches 10 run scoreboard players operation #current_mode_display value = #mode_display value


#"Round N/N"
execute store result storage sprint_racer:func_args num1 int 1 run scoreboard players get @s roundNumber
execute store result storage sprint_racer:func_args num2 int 1 run scoreboard players get #round_max_number value
function sprint_racer:game_logic/0/round_sequence/spawn_round_title_macro with storage sprint_racer:func_args

#"Gamemode: X"
execute if score #round_max_number value matches 11.. run scoreboard players operation #current_mode_display value = #round_game_type value
execute if score #current_mode_display value matches 1 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundText2"],CustomName:["",{translate:"sr.lobby.gamemode",color:"white",bold:false},{translate:"sr.lobby.race",color:"aqua",bold:false}],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #current_mode_display value matches 2 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundText2"],CustomName:["",{translate:"sr.lobby.gamemode",color:"white",bold:false},{translate:"sr.lobby.battle",color:"red",bold:false}],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #current_mode_display value matches 3 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundText2"],CustomName:["",{translate:"sr.lobby.gamemode",color:"white",bold:false},{translate:"sr.lobby.random_gamemode",color:"white",bold:false}],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
execute if score #current_mode_display value matches 4 run summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundText2"],CustomName:["",{translate:"sr.lobby.gamemode",color:"white",bold:false},{translate:"sr.lobby.choice",color:"yellow",bold:false}],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}

#it looks cool if these get tp'd upward from the same spot
execute if score #round_max_number value matches ..10 as @e[type=armor_stand,tag=roundDisplay] at @s run function sprint_racer:game_logic/0/round_sequence/move_numbers_into_place
execute if score #round_max_number value matches 11.. as @e[type=armor_stand,tag=roundDisplay] at @s run function sprint_racer:game_logic/0/round_sequence/move_numbers_into_place_hacked