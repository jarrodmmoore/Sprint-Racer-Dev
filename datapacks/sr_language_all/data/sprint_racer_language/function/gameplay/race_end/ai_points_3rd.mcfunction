function sprint_racer:ai/general/store_name

execute if entity @s[scores={addPoints=1}] run tellraw @a ["",{storage:"sprint_racer:func_args",nbt:"ai_name",interpret:false,color:"aqua"},{text:" >> [3rd] +1",color:"gold",bold:true},{text:" "},{translate:"sr.game.got_point",color:"gold",bold:true}]
execute unless entity @s[scores={addPoints=1}] run tellraw @a ["",{storage:"sprint_racer:func_args",nbt:"ai_name",interpret:false,color:"aqua"},{text:" >> [3rd] +",color:"gold",bold:true},{score:{name:"@s",objective:"addPoints"},color:"gold",bold:true},{text:" "},{translate:"sr.game.got_points",color:"gold",bold:true}]
