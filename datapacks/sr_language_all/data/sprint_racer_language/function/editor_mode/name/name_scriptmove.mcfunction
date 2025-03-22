data merge entity @s {CustomName:{text:"Script Move (ERROR, INVALID NUMBER)",color:"red",bold:true,italic:false}}

execute if entity @s[scores={scriptMove=1}] run data merge entity @s {CustomName:{text:"Script Move 1",color:"light_purple",bold:true,italic:false}}
execute if entity @s[scores={scriptMove=2}] run data merge entity @s {CustomName:{text:"Script Move 2",color:"light_purple",bold:true,italic:false}}
execute if entity @s[scores={scriptMove=3}] run data merge entity @s {CustomName:{text:"Script Move 3",color:"light_purple",bold:true,italic:false}}
execute if entity @s[scores={scriptMove=4}] run data merge entity @s {CustomName:{text:"Script Move 4",color:"light_purple",bold:true,italic:false}}

execute if entity @s[tag=scriptStart,scores={scriptMove=1}] run data merge entity @s {CustomName:{text:"Script Move 1 (START)",color:"yellow",bold:true,italic:false}}
execute if entity @s[tag=scriptStart,scores={scriptMove=2}] run data merge entity @s {CustomName:{text:"Script Move 2 (START)",color:"yellow",bold:true,italic:false}}
execute if entity @s[tag=scriptStart,scores={scriptMove=3}] run data merge entity @s {CustomName:{text:"Script Move 3 (START)",color:"yellow",bold:true,italic:false}}
execute if entity @s[tag=scriptStart,scores={scriptMove=4}] run data merge entity @s {CustomName:{text:"Script Move 4 (START)",color:"yellow",bold:true,italic:false}}

execute if entity @s[tag=scriptStart,tag=requireBoost,scores={scriptMove=1}] run data merge entity @s {CustomName:{text:"Script Move 1 (BOOST-START)",color:"yellow",bold:true,italic:false}}
execute if entity @s[tag=scriptStart,tag=requireBoost,scores={scriptMove=2}] run data merge entity @s {CustomName:{text:"Script Move 2 (BOOST-START)",color:"yellow",bold:true,italic:false}}
execute if entity @s[tag=scriptStart,tag=requireBoost,scores={scriptMove=3}] run data merge entity @s {CustomName:{text:"Script Move 3 (BOOST-START)",color:"yellow",bold:true,italic:false}}
execute if entity @s[tag=scriptStart,tag=requireBoost,scores={scriptMove=4}] run data merge entity @s {CustomName:{text:"Script Move 4 (BOOST-START)",color:"yellow",bold:true,italic:false}}

execute if entity @s[tag=scriptEnd,scores={scriptMove=1}] run data merge entity @s {CustomName:{text:"Script Move 1 (END)",color:"yellow",bold:true,italic:false}}
execute if entity @s[tag=scriptEnd,scores={scriptMove=2}] run data merge entity @s {CustomName:{text:"Script Move 2 (END)",color:"yellow",bold:true,italic:false}}
execute if entity @s[tag=scriptEnd,scores={scriptMove=3}] run data merge entity @s {CustomName:{text:"Script Move 3 (END)",color:"yellow",bold:true,italic:false}}
execute if entity @s[tag=scriptEnd,scores={scriptMove=4}] run data merge entity @s {CustomName:{text:"Script Move 4 (END)",color:"yellow",bold:true,italic:false}}

execute if entity @s[tag=scriptEnd,tag=scriptStart] run data merge entity @s {CustomName:{text:"Script Move (START & END, BAD!)",color:"red",bold:true,italic:false}}