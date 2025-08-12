#apply data
data merge entity @s {Tags:["respawnWheel"],billboard:"center",start_interpolation:-1,alignment:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f]},background:0}

#we are temporary
scoreboard players set @s lifespan 5
#kind of like a particle but dumber and less efficient

#apply the correct sprite
execute if score #test value matches 800.. run data modify entity @s text set value [{text:"\uE080",color:white,italic:false}]
execute if score #test value matches 700..799 run data modify entity @s text set value [{text:"\uE081",color:white,italic:false}]
execute if score #test value matches 600..699 run data modify entity @s text set value [{text:"\uE082",color:white,italic:false}]
execute if score #test value matches 500..599 run data modify entity @s text set value [{text:"\uE083",color:white,italic:false}]
execute if score #test value matches 400..499 run data modify entity @s text set value [{text:"\uE084",color:white,italic:false}]
execute if score #test value matches 300..399 run data modify entity @s text set value [{text:"\uE085",color:white,italic:false}]
execute if score #test value matches 200..299 run data modify entity @s text set value [{text:"\uE086",color:white,italic:false}]
execute if score #test value matches 100..199 run data modify entity @s text set value [{text:"\uE087",color:white,italic:false}]
execute if score #test value matches 30..99 run data modify entity @s text set value [{text:"\uE088",color:white,italic:false}]