function sprint_racer:ai/general/store_name

execute if entity @s[scores={addPoints=1}] run tellraw @a ["",{storage:"sprint_racer:func_args",nbt:"ai_name",interpret:false,color:"aqua"},{text:" >> [1st] +1",color:"yellow",bold:true},{text:" "},{translate:"sr.game.got_point",color:"yellow",bold:true}]
execute unless entity @s[scores={addPoints=1}] run tellraw @a ["",{storage:"sprint_racer:func_args",nbt:"ai_name",interpret:false,color:"aqua"},{text:" >> [1st] +",color:"yellow",bold:true},{score:{name:"@s",objective:"addPoints"},color:"yellow",bold:true},{text:" "},{translate:"sr.game.got_points",color:"yellow",bold:true}]
