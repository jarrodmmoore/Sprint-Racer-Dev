#kick out if not admin
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=requireAdmin] unless entity @s[tag=admin] run return run function sprint_racer:game_logic/0/quick_warp/_must_be_admin
#=====

$$(teleport)

execute at @s run playsound entity.enderman.teleport master @s ~ 100000 ~ 100000