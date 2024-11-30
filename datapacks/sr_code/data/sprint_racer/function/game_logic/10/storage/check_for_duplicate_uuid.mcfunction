execute store result score #test1 value run data get entity @s UUID[0]
execute store result score #test2 value run data get entity @s UUID[1]
execute store result score #test3 value run data get entity @s UUID[2]
execute store result score #test4 value run data get entity @s UUID[3]
execute if score #test1 value = #UUID_check_0 value if score #test2 value = #UUID_check_1 value if score #test3 value = #UUID_check_2 value if score #test4 value = #UUID_check_3 value run scoreboard players set #success value 0