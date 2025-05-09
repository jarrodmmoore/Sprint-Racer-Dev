#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

#move the fire jets to their start position
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run scoreboard players set @e[type=marker,tag=mkmcFireJet] AIBC_dir3 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run scoreboard players set @e[type=marker,tag=mkmcFireJet1] AIBC_dir4 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run scoreboard players set @e[type=marker,tag=mkmcFireJet2] AIBC_dir4 6

#animate the start line
#3..2..1..
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=100}] run setblock 8432 88 -9017 red_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=100}] run setblock 8432 87 -9017 red_stained_glass_pane
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=108}] run setblock 8432 88 -9018 red_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=108}] run setblock 8432 87 -9018 red_stained_glass_pane
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=116}] run setblock 8432 88 -9019 red_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=116}] run setblock 8432 87 -9019 red_stained_glass_pane
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=124}] run setblock 8432 88 -9020 red_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=124}] run setblock 8432 87 -9020 red_stained_glass_pane
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=132}] run setblock 8432 88 -9021 red_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=132}] run setblock 8432 87 -9021 red_stained_glass_pane
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run setblock 8432 88 -9022 red_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run setblock 8432 87 -9022 red_stained_glass_pane
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=148}] run setblock 8432 88 -9023 red_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=148}] run setblock 8432 87 -9023 red_stained_glass_pane
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=156}] run setblock 8432 88 -9024 red_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=156}] run setblock 8432 87 -9024 red_stained_glass_pane
#go!
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 8432 88 -9017 8432 88 -9024 lime_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 8432 87 -9017 8432 87 -9024 lime_stained_glass_pane

#back to default
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=220}] run fill 8432 88 -9017 8432 88 -9024 light_gray_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=220}] run fill 8432 87 -9017 8432 87 -9024 light_gray_stained_glass_pane