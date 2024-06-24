#send right to praia classic
tag @e[tag=chosenTrack] remove chosenTrack
tag @e[type=armor_stand,tag=random,scores={rNumber=37}] add chosenTrack
tag @e[tag=w,type=armor_stand] add needAnnounce
function sprint_racer:game_logic/1/_initialize
schedule function sprint_racer:game_logic/1/_initialize 1t