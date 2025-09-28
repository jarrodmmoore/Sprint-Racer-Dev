#do in reverse order

$execute if score @s racePosDisplay matches 1 run scoreboard players set $(name) racePosDisplay2 4
$execute if score @s racePosDisplay matches 1 unless score @s finishPos matches 1.. run scoreboard players display numberformat $(name) racePosDisplay2 fixed ["",{text:"➀",color:"yellow",bold:false}]

$execute if score @s racePosDisplay matches 2 run scoreboard players set $(name) racePosDisplay2 3
$execute if score @s racePosDisplay matches 2 unless score @s finishPos matches 1.. run scoreboard players display numberformat $(name) racePosDisplay2 fixed ["",{text:"➁",color:"white",bold:false}]

$execute if score @s racePosDisplay matches 3 run scoreboard players set $(name) racePosDisplay2 2
$execute if score @s racePosDisplay matches 3 unless score @s finishPos matches 1.. run scoreboard players display numberformat $(name) racePosDisplay2 fixed ["",{text:"➂",color:"white",bold:false}]

$execute if score @s racePosDisplay matches 4 run scoreboard players set $(name) racePosDisplay2 1
$execute if score @s racePosDisplay matches 4 unless score @s finishPos matches 1.. run scoreboard players display numberformat $(name) racePosDisplay2 fixed ["",{text:"➃",color:"white",bold:false}]

$execute if score @s finishPos matches 1.. run scoreboard players display numberformat $(name) racePosDisplay2 fixed ["",{text:"\uE072",color:"white",bold:false}]