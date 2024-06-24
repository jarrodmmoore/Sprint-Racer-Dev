execute if entity @s[scores={rNumber=1}] unless entity @s[tag=needRespawn] run function sprint_racer:ai/general/check_if_alive/1
execute if entity @s[scores={rNumber=2}] unless entity @s[tag=needRespawn] run function sprint_racer:ai/general/check_if_alive/2
execute if entity @s[scores={rNumber=3}] unless entity @s[tag=needRespawn] run function sprint_racer:ai/general/check_if_alive/3
execute if entity @s[scores={rNumber=4}] unless entity @s[tag=needRespawn] run function sprint_racer:ai/general/check_if_alive/4
execute if entity @s[scores={rNumber=5}] unless entity @s[tag=needRespawn] run function sprint_racer:ai/general/check_if_alive/5
execute if entity @s[scores={rNumber=6}] unless entity @s[tag=needRespawn] run function sprint_racer:ai/general/check_if_alive/6
execute if entity @s[scores={rNumber=7}] unless entity @s[tag=needRespawn] run function sprint_racer:ai/general/check_if_alive/7
execute if entity @s[scores={rNumber=8}] unless entity @s[tag=needRespawn] run function sprint_racer:ai/general/check_if_alive/8
execute if entity @s[scores={rNumber=9}] unless entity @s[tag=needRespawn] run function sprint_racer:ai/general/check_if_alive/9

execute if entity @s[tag=needRespawn] run function sprint_racer:ai/general/respawn/_index_find_respawn