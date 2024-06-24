#players with musicDef (music default) tag adopt the chosen song's BGMtrack value
scoreboard players operation @a[tag=musicDef] BGMtrack = @s rNumber
scoreboard players set @a[tag=musicDef] musicTime 20

#announce song (realms only)
#this was cut due to chat clutter and weird text overlaying
#execute if entity @e[tag=w,type=armor_stand,tag=realms,scores={gameState=1}] run function sprint_racer:music/global/announce_index
#execute if entity @e[tag=w,type=armor_stand,tag=realms,scores={gameState=3}] run function sprint_racer:music/global/announce_index

#mark this song as the latest one played
execute unless entity @s[scores={rNumber=1..2}] run tag @e[type=armor_stand,tag=random,tag=lastBGM] remove lastBGM
tag @e[tag=setBGM] remove setBGM
execute unless entity @s[scores={rNumber=1..2}] run tag @s add lastBGM
tag @s add currentBGM