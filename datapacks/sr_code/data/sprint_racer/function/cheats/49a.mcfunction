execute as @a[tag=playing,gamemode=adventure,scores={carrotInput=1..,inputCooldown=..0,setHorn=1..}] unless data entity @s SelectedItem at @s run function sprint_racer:cheats/honk

execute as @a unless entity @s[scores={setHorn=-1..}] unless entity @s[scores={setHorn=..-2}] run function sprint_racer_language:_dlc_4/cheats/horn_inform
scoreboard players enable @a setHorn