execute if entity @s[scores={damage=100..,crowdCooldown=..0}] if score grandprix gameState matches 1 at @s run function sprint_racer:grand_prix/crowd_gasp
execute if entity @s[scores={hp=..7,damage=20..,crowdCooldown=..0}] if score grandprix gameState matches 1 at @s run function sprint_racer:grand_prix/crowd_gasp

execute if entity @s[scores={damage=10..19}] run function sprint_racer:damage_logic/player/1
execute if entity @s[scores={damage=20..29}] run function sprint_racer:damage_logic/player/2
execute if entity @s[scores={damage=30..39}] run function sprint_racer:damage_logic/player/3
execute if entity @s[scores={damage=40..49}] run function sprint_racer:damage_logic/player/4
execute if entity @s[scores={damage=50..59}] run function sprint_racer:damage_logic/player/5
execute if entity @s[scores={damage=60..69}] run function sprint_racer:damage_logic/player/6
execute if entity @s[scores={damage=70..79}] run function sprint_racer:damage_logic/player/7
execute if entity @s[scores={damage=80..89}] run function sprint_racer:damage_logic/player/8
execute if entity @s[scores={damage=90..99}] run function sprint_racer:damage_logic/player/9
execute if entity @s[scores={damage=100..109}] run function sprint_racer:damage_logic/player/10
execute if entity @s[scores={damage=110..119}] run function sprint_racer:damage_logic/player/11
execute if entity @s[scores={damage=120..129}] run function sprint_racer:damage_logic/player/12
execute if entity @s[scores={damage=130..139}] run function sprint_racer:damage_logic/player/13
execute if entity @s[scores={damage=140..149}] run function sprint_racer:damage_logic/player/14
execute if entity @s[scores={damage=150..159}] run function sprint_racer:damage_logic/player/15
execute if entity @s[scores={damage=160..169}] run function sprint_racer:damage_logic/player/16
execute if entity @s[scores={damage=170..179}] run function sprint_racer:damage_logic/player/17
execute if entity @s[scores={damage=180..189}] run function sprint_racer:damage_logic/player/18
execute if entity @s[scores={damage=190..199}] run function sprint_racer:damage_logic/player/19
execute if entity @s[scores={damage=200..}] run function sprint_racer:damage_logic/player/20

execute unless score @s cStatHitstun matches 100 run function sprint_racer:damage_logic/player/multiply_hitstun