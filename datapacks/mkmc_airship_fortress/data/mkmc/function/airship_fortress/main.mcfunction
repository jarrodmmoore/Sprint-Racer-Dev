#this function is run 20 times per second (every game tick) while your track is being played.

#run the fire jets
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=200..}] as @e[type=marker,tag=mkmcFireJet] at @s if loaded ~ ~ ~ run function mkmc:airship_fortress/fire_jet_object

#fake explosion when players get shot out the cannon
execute as @e[tag=activeplayer,scores={scriptMove=3},x=8362,y=71,z=-8958,distance=..3] at @s positioned 8363 72 -8958 run function sprint_racer:levels/miners_island/cannon_blast

#shoot fireballs out the cannons every few seconds
scoreboard players add #airshipCannon value 1
execute if score #airshipCannon value matches 36.. run function mkmc:airship_fortress/cannon_fire