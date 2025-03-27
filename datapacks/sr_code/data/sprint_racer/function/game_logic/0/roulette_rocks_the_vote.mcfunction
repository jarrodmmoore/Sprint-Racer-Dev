#executed as a random player when "roulette" track mode is active

effect give @s minecraft:glowing 15 1 true
execute at @s run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"star",colors:[I;56831,16729357],has_trail:true}]}}}}
function sprint_racer_language:_dlc_2/lobby/roulette_winner

scoreboard players set @e[type=armor_stand,tag=voteOption] voteCount -1
execute if entity @s[tag=playerVote1] run scoreboard players set @e[type=armor_stand,limit=1,tag=vote1] voteCount 1
execute if entity @s[tag=playerVote2] run scoreboard players set @e[type=armor_stand,limit=1,tag=vote2] voteCount 1
execute if entity @s[tag=playerVote3] run scoreboard players set @e[type=armor_stand,limit=1,tag=vote3] voteCount 1

execute unless entity @e[type=armor_stand,tag=voteOption,scores={voteCount=0..}] run scoreboard players set @e[limit=1,sort=random,tag=voteOption,type=armor_stand] voteCount 1