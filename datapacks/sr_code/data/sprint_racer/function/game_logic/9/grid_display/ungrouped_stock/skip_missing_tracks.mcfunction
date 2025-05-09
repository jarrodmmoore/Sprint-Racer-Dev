#need to skip blank slots and tracks that are still locked behind cheat codes

#battle: skip to underworld
execute if score #trackGridMode value matches 2 if score #trackGridIterate value matches 20 run scoreboard players set #trackGridIterate value 50
