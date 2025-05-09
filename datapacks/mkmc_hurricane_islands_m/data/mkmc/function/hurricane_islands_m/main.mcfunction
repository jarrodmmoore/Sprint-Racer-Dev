#this function is run 20 times per second (every game tick) while your track is being played.

#make sure cross-island teleports work in case of small simulation distance
tp @a[tag=playing,gamemode=adventure,x=8947,y=63,z=-5892,distance=..5,scores={lastTeleport=1}] 8867 127 -5991 180 0
tp @a[tag=playing,gamemode=adventure,x=8992,y=121,z=-5956,distance=..5,scores={lastTeleport=2}] 8834 122 -5859 340 0
#...
tp @a[tag=playing,gamemode=adventure,x=8861,y=128,z=-5864,distance=..5,scores={lastTeleport=4}] 9027 124 -5847 270 0
#...
tp @a[tag=playing,gamemode=adventure,x=9044,y=126,z=-5997,distance=..5,scores={lastTeleport=6}] 8947 142 -5861 0 0
tp @a[tag=playing,gamemode=adventure,x=8949,y=142,z=-5760,distance=..5,scores={lastTeleport=7}] 8947 62 -5941 0 0
