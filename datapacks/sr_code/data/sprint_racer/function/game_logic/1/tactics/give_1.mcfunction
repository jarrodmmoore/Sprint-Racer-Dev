#I doubt anyone will play with 25 checkpoints and 25 laps, but I'll account for it here just in case

scoreboard players add @s tacticsSequence 0

#each time we loop the sequence we pick a new interval
execute if entity @s[scores={tacticsSequence=51..}] run scoreboard players add @s tacticsStep 1

execute if entity @s[scores={tacticsSequence=3201..}] run scoreboard players remove @s tacticsSequence 3200
execute if entity @s[scores={tacticsSequence=1601..}] run scoreboard players remove @s tacticsSequence 1600
execute if entity @s[scores={tacticsSequence=801..}] run scoreboard players remove @s tacticsSequence 800
execute if entity @s[scores={tacticsSequence=401..}] run scoreboard players remove @s tacticsSequence 400
execute if entity @s[scores={tacticsSequence=201..}] run scoreboard players remove @s tacticsSequence 200
execute if entity @s[scores={tacticsSequence=101..}] run scoreboard players remove @s tacticsSequence 100
execute if entity @s[scores={tacticsSequence=51..}] run scoreboard players remove @s tacticsSequence 50

#now get seed
execute if entity @s[scores={tacticsSequence=1}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1}] tactics_seed
execute if entity @s[scores={tacticsSequence=2}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=2}] tactics_seed
execute if entity @s[scores={tacticsSequence=3}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=3}] tactics_seed
execute if entity @s[scores={tacticsSequence=4}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=4}] tactics_seed
execute if entity @s[scores={tacticsSequence=5}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=5}] tactics_seed
execute if entity @s[scores={tacticsSequence=6}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=6}] tactics_seed
execute if entity @s[scores={tacticsSequence=7}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=7}] tactics_seed
execute if entity @s[scores={tacticsSequence=8}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=8}] tactics_seed
execute if entity @s[scores={tacticsSequence=9}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=9}] tactics_seed
execute if entity @s[scores={tacticsSequence=10}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=10}] tactics_seed

execute if entity @s[scores={tacticsSequence=11}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=11}] tactics_seed
execute if entity @s[scores={tacticsSequence=12}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=12}] tactics_seed
execute if entity @s[scores={tacticsSequence=13}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=13}] tactics_seed
execute if entity @s[scores={tacticsSequence=14}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=14}] tactics_seed
execute if entity @s[scores={tacticsSequence=15}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=15}] tactics_seed
execute if entity @s[scores={tacticsSequence=16}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=16}] tactics_seed
execute if entity @s[scores={tacticsSequence=17}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=17}] tactics_seed
execute if entity @s[scores={tacticsSequence=18}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=18}] tactics_seed
execute if entity @s[scores={tacticsSequence=19}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=19}] tactics_seed
execute if entity @s[scores={tacticsSequence=20}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=20}] tactics_seed

execute if entity @s[scores={tacticsSequence=21}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=21}] tactics_seed
execute if entity @s[scores={tacticsSequence=22}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=22}] tactics_seed
execute if entity @s[scores={tacticsSequence=23}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=23}] tactics_seed
execute if entity @s[scores={tacticsSequence=24}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=24}] tactics_seed
execute if entity @s[scores={tacticsSequence=25}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=25}] tactics_seed
execute if entity @s[scores={tacticsSequence=26}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=26}] tactics_seed
execute if entity @s[scores={tacticsSequence=27}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=27}] tactics_seed
execute if entity @s[scores={tacticsSequence=28}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=28}] tactics_seed
execute if entity @s[scores={tacticsSequence=29}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=29}] tactics_seed
execute if entity @s[scores={tacticsSequence=30}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=30}] tactics_seed

execute if entity @s[scores={tacticsSequence=31}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=31}] tactics_seed
execute if entity @s[scores={tacticsSequence=32}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=32}] tactics_seed
execute if entity @s[scores={tacticsSequence=33}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=33}] tactics_seed
execute if entity @s[scores={tacticsSequence=34}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=34}] tactics_seed
execute if entity @s[scores={tacticsSequence=35}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=35}] tactics_seed
execute if entity @s[scores={tacticsSequence=36}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=36}] tactics_seed
execute if entity @s[scores={tacticsSequence=37}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=37}] tactics_seed
execute if entity @s[scores={tacticsSequence=38}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=38}] tactics_seed
execute if entity @s[scores={tacticsSequence=39}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=39}] tactics_seed
execute if entity @s[scores={tacticsSequence=40}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=40}] tactics_seed

execute if entity @s[scores={tacticsSequence=41}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=41}] tactics_seed
execute if entity @s[scores={tacticsSequence=42}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=42}] tactics_seed
execute if entity @s[scores={tacticsSequence=43}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=43}] tactics_seed
execute if entity @s[scores={tacticsSequence=44}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=44}] tactics_seed
execute if entity @s[scores={tacticsSequence=45}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=45}] tactics_seed
execute if entity @s[scores={tacticsSequence=46}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=46}] tactics_seed
execute if entity @s[scores={tacticsSequence=47}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=47}] tactics_seed
execute if entity @s[scores={tacticsSequence=48}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=48}] tactics_seed
execute if entity @s[scores={tacticsSequence=49}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=49}] tactics_seed
execute if entity @s[scores={tacticsSequence=50}] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=50}] tactics_seed

function sprint_racer:game_logic/1/tactics/interpret_seed

#move along sequence
scoreboard players operation @s tacticsSequence += @s tacticsStep