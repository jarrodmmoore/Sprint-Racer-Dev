execute if entity @s[tag=customrace] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":9996}}}
execute if entity @s[tag=custombattle] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":9997}}}

execute if entity @s[tag=customrace,tag=trackNovice] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":9989}}}
execute if entity @s[tag=customrace,tag=trackIntermed] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":9990}}}
execute if entity @s[tag=customrace,tag=trackExpert] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":9991}}}
execute if entity @s[tag=customrace,tag=trackMaster] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":9992}}}

execute if entity @s[tag=custombattle,tag=trackTiny] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":9988}}}
execute if entity @s[tag=custombattle,tag=trackSmall] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":9993}}}
execute if entity @s[tag=custombattle,tag=trackMedium] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":9994}}}
execute if entity @s[tag=custombattle,tag=trackLarge] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":9995}}}


execute if entity @s[tag=usingMacroPreview] store result storage sprint_racer:func_args id int 1 run scoreboard players get @s customTagLine
execute if entity @s[tag=usingMacroPreview] run function sprint_racer:game_logic/11/item_frame/custom_preview_macro with storage sprint_racer:func_args

execute if entity @s[tag=customPreview,scores={customPreview=11001}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11001}}}
execute if entity @s[tag=customPreview,scores={customPreview=11002}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11002}}}
execute if entity @s[tag=customPreview,scores={customPreview=11003}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11003}}}
execute if entity @s[tag=customPreview,scores={customPreview=11004}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11004}}}
execute if entity @s[tag=customPreview,scores={customPreview=11005}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11005}}}
execute if entity @s[tag=customPreview,scores={customPreview=11006}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11006}}}
execute if entity @s[tag=customPreview,scores={customPreview=11007}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11007}}}
execute if entity @s[tag=customPreview,scores={customPreview=11008}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11008}}}
execute if entity @s[tag=customPreview,scores={customPreview=11009}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11009}}}
execute if entity @s[tag=customPreview,scores={customPreview=11010}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11010}}}

execute if entity @s[tag=customPreview,scores={customPreview=11011}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11011}}}
execute if entity @s[tag=customPreview,scores={customPreview=11012}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11012}}}
execute if entity @s[tag=customPreview,scores={customPreview=11013}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11013}}}
execute if entity @s[tag=customPreview,scores={customPreview=11014}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11014}}}
execute if entity @s[tag=customPreview,scores={customPreview=11015}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11015}}}
execute if entity @s[tag=customPreview,scores={customPreview=11016}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11016}}}
execute if entity @s[tag=customPreview,scores={customPreview=11017}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11017}}}
execute if entity @s[tag=customPreview,scores={customPreview=11018}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11018}}}
execute if entity @s[tag=customPreview,scores={customPreview=11019}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11019}}}
execute if entity @s[tag=customPreview,scores={customPreview=11020}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11020}}}

execute if entity @s[tag=customPreview,scores={customPreview=11021}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11021}}}
execute if entity @s[tag=customPreview,scores={customPreview=11022}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11022}}}
execute if entity @s[tag=customPreview,scores={customPreview=11023}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11023}}}
execute if entity @s[tag=customPreview,scores={customPreview=11024}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11024}}}
execute if entity @s[tag=customPreview,scores={customPreview=11025}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11025}}}
execute if entity @s[tag=customPreview,scores={customPreview=11026}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11026}}}
execute if entity @s[tag=customPreview,scores={customPreview=11027}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11027}}}
execute if entity @s[tag=customPreview,scores={customPreview=11028}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11028}}}
execute if entity @s[tag=customPreview,scores={customPreview=11029}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11029}}}
execute if entity @s[tag=customPreview,scores={customPreview=11030}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11030}}}

execute if entity @s[tag=customPreview,scores={customPreview=11031}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11031}}}
execute if entity @s[tag=customPreview,scores={customPreview=11032}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11032}}}
execute if entity @s[tag=customPreview,scores={customPreview=11033}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11033}}}
execute if entity @s[tag=customPreview,scores={customPreview=11034}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11034}}}
execute if entity @s[tag=customPreview,scores={customPreview=11035}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11035}}}
execute if entity @s[tag=customPreview,scores={customPreview=11036}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11036}}}
execute if entity @s[tag=customPreview,scores={customPreview=11037}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11037}}}
execute if entity @s[tag=customPreview,scores={customPreview=11038}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11038}}}
execute if entity @s[tag=customPreview,scores={customPreview=11039}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11039}}}
execute if entity @s[tag=customPreview,scores={customPreview=11040}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11040}}}

execute if entity @s[tag=customPreview,scores={customPreview=11041}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11041}}}
execute if entity @s[tag=customPreview,scores={customPreview=11042}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11042}}}
execute if entity @s[tag=customPreview,scores={customPreview=11043}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11043}}}
execute if entity @s[tag=customPreview,scores={customPreview=11044}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11044}}}
execute if entity @s[tag=customPreview,scores={customPreview=11045}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11045}}}
execute if entity @s[tag=customPreview,scores={customPreview=11046}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11046}}}
execute if entity @s[tag=customPreview,scores={customPreview=11047}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11047}}}
execute if entity @s[tag=customPreview,scores={customPreview=11048}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11048}}}
execute if entity @s[tag=customPreview,scores={customPreview=11049}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11049}}}
execute if entity @s[tag=customPreview,scores={customPreview=11050}] run data merge entity @e[limit=1,type=item_frame,tag=displayFrame] {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":11050}}}