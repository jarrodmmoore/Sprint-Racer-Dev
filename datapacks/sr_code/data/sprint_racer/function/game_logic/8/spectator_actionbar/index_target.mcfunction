execute unless entity @s[tag=ai] run scoreboard players operation @s specShowHP = @s hp

execute if entity @s[tag=ai] run scoreboard players operation @s specShowHP = @s hitboxHP
execute if entity @s[tag=ai] run scoreboard players set @s math 1000
execute if entity @s[tag=ai] run scoreboard players operation @s specShowHP -= @s math

title @a[tag=self] actionbar ["",{selector:"@s"},{text:" "},{text:"❤",color:"red",bold:false},{text:"x",color:"red",bold:true},{score:{name:"@s",objective:"specShowHP"},color:"red",bold:true}]