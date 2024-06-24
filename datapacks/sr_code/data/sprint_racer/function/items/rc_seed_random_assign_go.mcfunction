#make sure race capsule randomization table is loaded
execute unless entity @e[tag=w,limit=1,type=armor_stand,scores={capsuleState=3}] as @e[limit=1,tag=w,type=armor_stand] run function sprint_racer:items/container_spawn/capsule_category_odds/load_battle_odds

#summon random item, provided it isn't banned
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=!specialOddBan,tag=random,type=armor_stand,scores={rNumber=1..50}] rNumber

#I would recommend banning lightning strike before doing this
execute if entity @s[scores={rNumber=1..6}] run scoreboard players set @s itemchestSeedR 1
execute if entity @s[scores={rNumber=7..12}] run scoreboard players set @s itemchestSeedR 2
execute if entity @s[scores={rNumber=13..17}] run scoreboard players set @s itemchestSeedR 3
execute if entity @s[scores={rNumber=18..20}] run scoreboard players set @s itemchestSeedR 4
execute if entity @s[scores={rNumber=21..24}] run scoreboard players set @s itemchestSeedR 5
execute if entity @s[scores={rNumber=25..26}] run scoreboard players set @s itemchestSeedR 6
execute if entity @s[scores={rNumber=27..28}] run scoreboard players set @s itemchestSeedR 7
execute if entity @s[scores={rNumber=29}] run scoreboard players set @s itemchestSeedR 8
execute if entity @s[scores={rNumber=30..31}] run scoreboard players set @s itemchestSeedR 9
execute if entity @s[scores={rNumber=32..33}] run scoreboard players set @s itemchestSeedR 10
execute if entity @s[scores={rNumber=34}] run scoreboard players set @s itemchestSeedR 11
execute if entity @s[scores={rNumber=35..36}] run scoreboard players set @s itemchestSeedR 12
execute if entity @s[scores={rNumber=37..38}] run scoreboard players set @s itemchestSeedR 13
execute if entity @s[scores={rNumber=39..40}] run scoreboard players set @s itemchestSeedR 14
execute if entity @s[scores={rNumber=41..42}] run scoreboard players set @s itemchestSeedR 15
execute if entity @s[scores={rNumber=43..44}] run scoreboard players set @s itemchestSeedR 16
execute if entity @s[scores={rNumber=45..46}] run scoreboard players set @s itemchestSeedR 17
execute if entity @s[scores={rNumber=47..48}] run scoreboard players set @s itemchestSeedR 18
execute if entity @s[scores={rNumber=49}] run scoreboard players set @s itemchestSeedR 19
execute if entity @s[scores={rNumber=50}] run scoreboard players set @s itemchestSeedR 20

#place enchanting tables manually you lazy bum!
#(their placement require a little extra thought)

tellraw @a ["",{"text":"[DEV] Assigned Item Chest (Battle) to itemchestSeedR ","color":"green"},{"score":{"name":"@s","objective":"itemchestSeedR"},"color":"green"}]