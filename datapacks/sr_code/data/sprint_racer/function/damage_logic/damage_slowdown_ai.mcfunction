execute if entity @s[tag=!sa_snowgolem,scores={damage=10..19}] run function sprint_racer:damage_logic/ai/1
execute if entity @s[tag=sa_snowgolem,scores={damage=10..19}] run function sprint_racer:damage_logic/ai/1_snowgolem

execute if entity @s[scores={damage=20..29}] run function sprint_racer:damage_logic/ai/2
execute if entity @s[scores={damage=30..39}] run function sprint_racer:damage_logic/ai/3
execute if entity @s[scores={damage=40..49}] run function sprint_racer:damage_logic/ai/4
execute if entity @s[scores={damage=50..59}] run function sprint_racer:damage_logic/ai/5
execute if entity @s[scores={damage=60..69}] run function sprint_racer:damage_logic/ai/6
execute if entity @s[scores={damage=70..79}] run function sprint_racer:damage_logic/ai/7
execute if entity @s[scores={damage=80..89}] run function sprint_racer:damage_logic/ai/8
execute if entity @s[scores={damage=90..99}] run function sprint_racer:damage_logic/ai/9
execute if entity @s[scores={damage=100..109}] run function sprint_racer:damage_logic/ai/10
execute if entity @s[scores={damage=110..119}] run function sprint_racer:damage_logic/ai/11
execute if entity @s[scores={damage=120..129}] run function sprint_racer:damage_logic/ai/12
execute if entity @s[scores={damage=130..139}] run function sprint_racer:damage_logic/ai/13
execute if entity @s[scores={damage=140..149}] run function sprint_racer:damage_logic/ai/14
execute if entity @s[scores={damage=150..159}] run function sprint_racer:damage_logic/ai/15
execute if entity @s[scores={damage=160..169}] run function sprint_racer:damage_logic/ai/16
execute if entity @s[scores={damage=170..179}] run function sprint_racer:damage_logic/ai/17
execute if entity @s[scores={damage=180..189}] run function sprint_racer:damage_logic/ai/18
execute if entity @s[scores={damage=190..199}] run function sprint_racer:damage_logic/ai/19
execute if entity @s[scores={damage=200..}] run function sprint_racer:damage_logic/ai/20

execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,type=armor_stand,tag=25a] if entity @s[tag=ai,scores={attackerID=1..}] run data merge entity @s {Health:999.0f}
execute if entity @s[tag=sa_villager,scores={hitboxHP=1001..,attackerID=1..}] at @s if entity @a[distance=..25] run function sprint_racer_language:_dlc_3/gameplay/villager_ai/chat_hurt

scoreboard players set @s speedBoost 0
scoreboard players set @s damage 0