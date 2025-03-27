#output log.
#oh my god.
#SHUT UP

#screens in the arcade
#bliss
summon item_frame 1604 89 435 {Facing:5b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99104}}}
#2d platformer -> toy tank royale
summon item_frame 1604 89 432 {Facing:5b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99101}}}
#rematch
summon item_frame 1618 89 441 {Facing:4b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99110}}}
summon item_frame 1618 89 442 {Facing:4b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99103}}}
#quattour -> good phantom
summon item_frame 1604 89 443 {Facing:2b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99108}}}
#sky scapers
summon item_frame 1613 98 431 {Facing:3b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99111}}}
summon item_frame 1614 98 431 {Facing:3b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99109}}}
#no more diamonds
summon item_frame 1619 98 431 {Facing:4b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99102}}}
#doze off
summon item_frame 1619 98 434 {Facing:4b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99105}}}
#escapecraft -> minotaur mash
summon item_frame 1614 98 449 {Facing:4b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99106}}}
#mkmc
summon item_frame 1613 98 452 {Facing:4b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99107}}}

#screens in the save state room
summon item_frame 1613 89 460 {Facing:2b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99112}}}
summon item_frame 1612 89 460 {Facing:2b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99113}}}
summon item_frame 1609 89 460 {Facing:2b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop","save_frame_1"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99114}}}
summon item_frame 1608 89 460 {Facing:2b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop","save_frame_2"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99125}}}
function sprint_racer:game_logic/0/save_state/update_save_state_screen

#for your safety...
summon item_frame 1565 90 381 {Facing:4b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99001}}}
summon item_frame 1565 90 382 {Facing:4b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99003}}}
summon item_frame 1565 89 381 {Facing:4b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99002}}}
summon item_frame 1565 89 382 {Facing:4b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99004}}}

summon item_frame 1566 90 381 {Facing:5b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99003}}}
summon item_frame 1566 90 382 {Facing:5b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99001}}}
summon item_frame 1566 89 381 {Facing:5b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99004}}}
summon item_frame 1566 89 382 {Facing:5b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["fixframe","lobbyprop"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":99002}}}
