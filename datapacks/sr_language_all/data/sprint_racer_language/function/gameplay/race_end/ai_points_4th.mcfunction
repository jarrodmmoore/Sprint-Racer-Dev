function sprint_racer:ai/general/store_name

execute if entity @s[scores={addPoints=1}] run tellraw @a ["",{storage:"sprint_racer:func_args",nbt:"ai_name",interpret:false,color:"aqua"},{text:" >> [4th] +1",color:"white",bold:true},{text:" "},{translate:"sr.game.got_point",color:"white",bold:true}]
execute unless entity @s[scores={addPoints=1}] run tellraw @a ["",{storage:"sprint_racer:func_args",nbt:"ai_name",interpret:false,color:"aqua"},{text:" >> [4th] +",color:"white",bold:true},{score:{name:"@s",objective:"addPoints"},color:"white",bold:true},{text:" "},{translate:"sr.game.got_points",color:"white",bold:true}]
