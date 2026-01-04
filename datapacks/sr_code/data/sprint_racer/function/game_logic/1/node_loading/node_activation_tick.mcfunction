#every second or two, activator nodes should activate stuff!
scoreboard players add @s nodeTimeCycle 1
scoreboard players set @s[scores={nodeTimeCycle=21..}] nodeTimeCycle 1
execute if entity @s[scores={nodeTimeCycle=1}] as @e[tag=node,tag=activator,type=marker,scores={nodeState=1..}] at @s run function sprint_racer:game_logic/1/node_loading/activator_pulse
