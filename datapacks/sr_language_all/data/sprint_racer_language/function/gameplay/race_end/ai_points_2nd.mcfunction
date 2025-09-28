function sprint_racer:ai/general/store_name

execute if entity @s[scores={addPoints=1}] run tellraw @a ["",{storage:"sprint_racer:func_args",nbt:"ai_name",interpret:false,color:"aqua"},{text:" >> [2nd] +1",color:"gray",bold:true},{text:" "},{translate:"sr.game.got_point",color:"gray",bold:true}]
execute unless entity @s[scores={addPoints=1}] run tellraw @a ["",{storage:"sprint_racer:func_args",nbt:"ai_name",interpret:false,color:"aqua"},{text:" >> [2nd] +",color:"gray",bold:true},{score:{name:"@s",objective:"addPoints"},color:"gray",bold:true},{text:" "},{translate:"sr.game.got_points",color:"gray",bold:true}]
