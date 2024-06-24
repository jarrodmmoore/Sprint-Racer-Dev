#send right to underworld
tag @e[tag=chosenTrack] remove chosenTrack
tag @e[type=armor_stand,tag=random,scores={rNumber=50}] add chosenTrack
tag @e[tag=w,type=armor_stand] add needAnnounce
function sprint_racer:game_logic/3/_initialize
schedule function sprint_racer:game_logic/3/_initialize 1t