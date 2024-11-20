#send right to underworld
tag @e[tag=chosenTrack] remove chosenTrack
tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=50}] add chosenTrack
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add needAnnounce
function sprint_racer:game_logic/3/_initialize
schedule function sprint_racer:game_logic/3/_initialize 1t