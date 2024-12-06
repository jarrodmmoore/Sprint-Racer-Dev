bossbar set minecraft:timeremaining name ["",{"translate":"sr.game.sudden_death","bold":true,"color":"red"}]
execute if score #bbPersonalize value matches 2 run bossbar set minecraft:timeremaining color pink
execute unless score #bbPersonalize value matches 2 run bossbar set minecraft:timeremaining color red
bossbar set minecraft:timeremaining max 1
bossbar set minecraft:timeremaining value 1
bossbar set minecraft:timeremaining style progress