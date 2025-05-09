#this function is run 20 times per second (every game tick) while your track is being played.


#overhead map stuff
scoreboard players set @a mapZone 0
scoreboard players set @a[gamemode=!spectator,scores={coord_y=..320000}] mapZone 1
function mkmc:papyland/map


#handle Temple of Time logic after 3,2,1,GO! has happened (once per second)
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=200..,currentTimeMsec=0}] run function mkmc:papyland/stone_logic



#this track is wack. wth was child flamingo smoking?

#...
#ok i remember actually!
#context: this map was originally made in Cube 2: Sauerbraten... probably ciara 2011
#i was learning that game's level editor, and i made a wild-looking test map to figure everything out

#fun fact: Cube 2, an Octree/voxel based game engine, predates minecraft by several years.
#my fascination with it was probably the reason minecraft kicked so hard for me when i discovered it

#anyway, i ended up getting kind of attached to that absolute homonculous of a level i'd built
#and i ended up re-building it in minecraft a few years later.
#then a few years later still, it got included as a secret Battle Arena in MKMC.

#probably the most maximalist Battle Arena ever seen in MKMC or SR. and weirdest
#it's unique, if nothing else.
#making AI waypoints for this level sucks ass, though