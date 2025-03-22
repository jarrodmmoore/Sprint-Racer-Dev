title @s actionbar ["",{translate:"sr.game.kos",bold:true},{score:{name:"@s",objective:"KOs"},color:"green",bold:false},{text:" "},{text:" "},{text:" "},{translate:"sr.game.rank",bold:true},{text:"1st",color:"yellow",bold:true}]
#execute if entity @s[tag=!firstplace] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ .5 2
#execute if entity @s[tag=!firstplace] run function sprint_racer_language:gameplay/rank_display/taken_lead
tag @s add firstplace
tag @s add firstplace2