#pick race or battle at random (race is slightly more likely)
execute store result score #random value run random value 1..5
execute if score #random value matches 1..3 run scoreboard players set #round_game_type value 1
execute if score #random value matches 4..5 run scoreboard players set #round_game_type value 2