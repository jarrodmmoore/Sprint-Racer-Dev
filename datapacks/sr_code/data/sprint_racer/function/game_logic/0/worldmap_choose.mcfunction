#get nearest worldmapID
execute if entity @s[type=player] run scoreboard players operation @s worldmapID = @e[limit=1,sort=nearest,type=armor_stand,tag=trackminimap] worldmapID
#worldmapID is overridden is specific places
execute if entity @s[type=player] at @s if block ~ 0 ~ yellow_wool run function sprint_racer:worldmap/special_worldmap_override

#apply our choice if we used the quick select menu to automatically choose a track
execute if entity @s[type=player,tag=qsDirectChoose] run scoreboard players operation @s worldmapID = @s qsTrackWarp
execute if entity @s[tag=qsDirectChoose,scores={worldmapID=0..999}] run scoreboard players set global gameState 1
execute if entity @s[tag=qsDirectChoose,scores={worldmapID=1000..}] run scoreboard players set global gameState 3

execute if score global gameState matches 6 run scoreboard players set @s taLastChosen 1
execute if score global gameState matches 6 run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] taLastChosen 80

#remember previous coordinates when in time attack so we can go back here when we return
execute if score global gameState matches 6 as @s store result score @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remember_x run data get entity @s Pos[0] 1
execute if score global gameState matches 6 as @s store result score @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remember_z run data get entity @s Pos[2] 1

#time attack, only one player can play at a time!
execute if score global gameState matches 6 as @a[limit=1,sort=random,scores={inputCooldown=..0,carrotInput=1..}] if items entity @s weapon.mainhand filled_map[custom_data~{wmPreview:1b}] at @s run function sprint_racer:game_logic/6/this_player_only

#set gamemode
execute if entity @s[tag=!dontSetGamemode,scores={worldmapID=-29..-20}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameState 3
execute if entity @s[tag=!dontSetGamemode,scores={worldmapID=-19..-10}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameState 1
execute if entity @s[tag=!dontSetGamemode,scores={worldmapID=0..999}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameState 1
execute if entity @s[tag=!dontSetGamemode,scores={worldmapID=1000..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameState 3
#sync it
execute if entity @s[tag=!dontSetGamemode] run scoreboard players operation global gameState = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] gameState

#free roam mode? don't *really* set the gamemode, just fake it
execute if entity @s[tag=dontSetGamemode,scores={worldmapID=-29..-20}] run scoreboard players set global gameState 3
execute if entity @s[tag=dontSetGamemode,scores={worldmapID=-19..-10}] run scoreboard players set global gameState 1
execute if entity @s[tag=dontSetGamemode,scores={worldmapID=0..999}] run scoreboard players set global gameState 1
execute if entity @s[tag=dontSetGamemode,scores={worldmapID=1000..}] run scoreboard players set global gameState 3

execute if entity @s[scores={worldmapID=..-1}] run function sprint_racer:game_logic/0/worldmap_choose_custom

execute if score global gameState matches ..2 if entity @s[scores={worldmapID=50}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=50}] add chosenTrack

execute if score global gameState matches ..2 if entity @s[scores={worldmapID=1}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=2}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=2}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=3}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=3}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=4}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=4}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=5}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=5}] add chosenTrack

execute if score global gameState matches ..2 if entity @s[scores={worldmapID=6}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=6}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=7}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=7}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=8}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=8}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=9}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=9}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=10}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=10}] add chosenTrack

execute if score global gameState matches ..2 if entity @s[scores={worldmapID=11}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=11}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=12}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=12}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=13}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=13}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=14}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=14}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=15}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=15}] add chosenTrack

execute if score global gameState matches ..2 if entity @s[scores={worldmapID=16}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=16}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=17}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=17}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=18}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=18}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=19}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=19}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=20}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=20}] add chosenTrack

execute if score global gameState matches ..2 if entity @s[scores={worldmapID=21}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=21}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=22}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=22}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=23}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=23}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=24}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=24}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=25}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=25}] add chosenTrack

execute if score global gameState matches ..2 if entity @s[scores={worldmapID=26}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=26}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=27}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=27}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=28}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=28}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=29}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=29}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=30}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=30}] add chosenTrack

execute if score global gameState matches ..2 if entity @s[scores={worldmapID=31}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=31}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=32}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=32}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=33}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=33}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=34}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=34}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=35}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=35}] add chosenTrack

execute if score global gameState matches ..2 if entity @s[scores={worldmapID=36}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=36}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=37}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=37}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=38}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=38}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=39}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=39}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=40}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=40}] add chosenTrack

execute if score global gameState matches ..2 if entity @s[scores={worldmapID=41}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=41}] add chosenTrack

execute if score global gameState matches ..2 if entity @s[scores={worldmapID=42}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=42}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=43}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=43}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=44}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=44}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=45}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=45}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=46}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=46}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=47}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=47}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=48}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=48}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=49}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=49}] add chosenTrack

execute if score global gameState matches ..2 if entity @s[scores={worldmapID=51}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=51}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=52}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=52}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=53}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=53}] add chosenTrack
execute if score global gameState matches ..2 if entity @s[scores={worldmapID=54}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=54}] add chosenTrack

#add more here...

execute if score global gameState matches 3.. if entity @s[scores={worldmapID=1050}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=50}] add chosenTrack

execute if score global gameState matches 3.. if entity @s[scores={worldmapID=1001}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1}] add chosenTrack
execute if score global gameState matches 3.. if entity @s[scores={worldmapID=1002}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=2}] add chosenTrack
execute if score global gameState matches 3.. if entity @s[scores={worldmapID=1003}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=3}] add chosenTrack
execute if score global gameState matches 3.. if entity @s[scores={worldmapID=1004}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=4}] add chosenTrack
execute if score global gameState matches 3.. if entity @s[scores={worldmapID=1005}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=5}] add chosenTrack
execute if score global gameState matches 3.. if entity @s[scores={worldmapID=1006}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=6}] add chosenTrack
execute if score global gameState matches 3.. if entity @s[scores={worldmapID=1007}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=7}] add chosenTrack
execute if score global gameState matches 3.. if entity @s[scores={worldmapID=1008}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=8}] add chosenTrack
execute if score global gameState matches 3.. if entity @s[scores={worldmapID=1009}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=9}] add chosenTrack
execute if score global gameState matches 3.. if entity @s[scores={worldmapID=1010}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=10}] add chosenTrack
execute if score global gameState matches 3.. if entity @s[scores={worldmapID=1011}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=11}] add chosenTrack
execute if score global gameState matches 3.. if entity @s[scores={worldmapID=1012}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=12}] add chosenTrack
execute if score global gameState matches 3.. if entity @s[scores={worldmapID=1013}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=13}] add chosenTrack
execute if score global gameState matches 3.. if entity @s[scores={worldmapID=1014}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=14}] add chosenTrack
execute if score global gameState matches 3.. if entity @s[scores={worldmapID=1015}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=15}] add chosenTrack
execute if score global gameState matches 3.. if entity @s[scores={worldmapID=1016}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=16}] add chosenTrack
execute if score global gameState matches 3.. if entity @s[scores={worldmapID=1017}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=17}] add chosenTrack
execute if score global gameState matches 3.. if entity @s[scores={worldmapID=1018}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=18}] add chosenTrack
execute if score global gameState matches 3.. if entity @s[scores={worldmapID=1019}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=19}] add chosenTrack

#add more here...


#free roam mode: just warp straight to the track and then set gameState back to 5
execute if entity @s[tag=dontSetGamemode] if score global gameState matches ..2 as @e[limit=1,tag=chosenTrack,type=armor_stand] at @s run function sprint_racer:game_logic/1/_initialize_index
execute if entity @s[tag=dontSetGamemode] if score global gameState matches 3.. as @e[limit=1,tag=chosenTrack,type=armor_stand] at @s run function sprint_racer:game_logic/3/_initialize_index
execute if entity @s[tag=dontSetGamemode] run scoreboard players set global gameState 5
execute if entity @s[tag=dontSetGamemode] run tag @e[tag=chosenTrack,type=armor_stand] remove chosenTrack

execute unless entity @s[tag=gpOrderSet] unless entity @s[tag=doinTimeAttack] if score global gameState matches ..2 unless score global gameState matches 5 as @e[tag=chosenTrack] run function sprint_racer:game_logic/0/vote_preview/race/v_r_index_announce
execute unless entity @s[tag=gpOrderSet] unless entity @s[tag=doinTimeAttack] if score global gameState matches 3.. unless score global gameState matches 5 as @e[tag=chosenTrack] run function sprint_racer:game_logic/0/vote_preview/battle/v_b_index_announce
execute unless entity @s[tag=gpOrderSet] if entity @s[tag=doinTimeAttack] at @s run function sprint_racer:game_logic/6/preview_times
execute unless entity @s[tag=gpOrderSet] unless entity @s[tag=dontSetGamemode] as @a at @s run playsound minecraft:block.note_block.bell master @s ~ 100000 ~ 100000 2
execute unless entity @s[tag=gpOrderSet] if entity @s[tag=dontSetGamemode] at @s run playsound minecraft:block.note_block.bell master @s ~ 100000 ~ 100000 2

execute unless entity @s[tag=gpOrderSet] unless entity @s[tag=doinTimeAttack] if score global gameState matches ..2 unless score global gameState matches 5 run function sprint_racer:game_logic/1/_initialize
execute unless entity @s[tag=gpOrderSet] unless entity @s[tag=doinTimeAttack] if score global gameState matches 3.. unless score global gameState matches 5 run function sprint_racer:game_logic/3/_initialize
execute unless entity @s[tag=gpOrderSet] if entity @s[tag=doinTimeAttack] run function sprint_racer:game_logic/6/set_gamestate_without_ruining_everything

execute if entity @s[tag=gpOrderSet] run function sprint_racer:game_logic/11/add_track
tag @s[type=player,tag=qsDirectChoose] remove qsDirectChoose