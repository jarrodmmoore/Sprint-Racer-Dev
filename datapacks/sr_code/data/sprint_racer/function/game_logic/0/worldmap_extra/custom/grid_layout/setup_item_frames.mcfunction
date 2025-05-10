#uuids start at 00000071-0000-0079-0000-00d300000001

#make sure no duped uuids!
kill @e[type=item_frame,tag=trackGridFrameCustom]

#kill other item frames that may be left over from a previous era
execute positioned ~-1 ~-1 ~-1 run kill @e[type=item_frame,dx=5,dy=10,dz=10]

#kill this old fart
kill @e[type=armor_stand,tag=wmCustomStand]

#row 1 (top)
$summon minecraft:item_frame ^ ^2 ^ {Facing:$(facing),Invulnerable:1b,Silent:1b,Fixed:1b,Invisible:1b,Tags:["trackGridFrameCustom"],UUID:[I;113,121,211,1]}
$summon minecraft:item_frame ^-1 ^2 ^ {Facing:$(facing),Invulnerable:1b,Silent:1b,Fixed:1b,Invisible:1b,Tags:["trackGridFrameCustom"],UUID:[I;113,121,211,2]}
$summon minecraft:item_frame ^-2 ^2 ^ {Facing:$(facing),Invulnerable:1b,Silent:1b,Fixed:1b,Invisible:1b,Tags:["trackGridFrameCustom"],UUID:[I;113,121,211,3]}
$summon minecraft:item_frame ^-3 ^2 ^ {Facing:$(facing),Invulnerable:1b,Silent:1b,Fixed:1b,Invisible:1b,Tags:["trackGridFrameCustom"],UUID:[I;113,121,211,4]}
$summon minecraft:item_frame ^-4 ^2 ^ {Facing:$(facing),Invulnerable:1b,Silent:1b,Fixed:1b,Invisible:1b,Tags:["trackGridFrameCustom"],UUID:[I;113,121,211,5]}
$summon minecraft:item_frame ^-5 ^2 ^ {Facing:$(facing),Invulnerable:1b,Silent:1b,Fixed:1b,Invisible:1b,Tags:["trackGridFrameCustom"],UUID:[I;113,121,211,6]}
#row 2
$summon minecraft:item_frame ^ ^1 ^ {Facing:$(facing),Invulnerable:1b,Silent:1b,Fixed:1b,Invisible:1b,Tags:["trackGridFrameCustom"],UUID:[I;113,121,211,7]}
$summon minecraft:item_frame ^-1 ^1 ^ {Facing:$(facing),Invulnerable:1b,Silent:1b,Fixed:1b,Invisible:1b,Tags:["trackGridFrameCustom"],UUID:[I;113,121,211,8]}
$summon minecraft:item_frame ^-2 ^1 ^ {Facing:$(facing),Invulnerable:1b,Silent:1b,Fixed:1b,Invisible:1b,Tags:["trackGridFrameCustom"],UUID:[I;113,121,211,9]}
$summon minecraft:item_frame ^-3 ^1 ^ {Facing:$(facing),Invulnerable:1b,Silent:1b,Fixed:1b,Invisible:1b,Tags:["trackGridFrameCustom"],UUID:[I;113,121,211,10]}
$summon minecraft:item_frame ^-4 ^1 ^ {Facing:$(facing),Invulnerable:1b,Silent:1b,Fixed:1b,Invisible:1b,Tags:["trackGridFrameCustom"],UUID:[I;113,121,211,11]}
$summon minecraft:item_frame ^-5 ^1 ^ {Facing:$(facing),Invulnerable:1b,Silent:1b,Fixed:1b,Invisible:1b,Tags:["trackGridFrameCustom"],UUID:[I;113,121,211,12]}
#row 3 (bottom)
$summon minecraft:item_frame ^ ^ ^ {Facing:$(facing),Invulnerable:1b,Silent:1b,Fixed:1b,Invisible:1b,Tags:["trackGridFrameCustom"],UUID:[I;113,121,211,13]}
$summon minecraft:item_frame ^-1 ^ ^ {Facing:$(facing),Invulnerable:1b,Silent:1b,Fixed:1b,Invisible:1b,Tags:["trackGridFrameCustom"],UUID:[I;113,121,211,14]}
$summon minecraft:item_frame ^-2 ^ ^ {Facing:$(facing),Invulnerable:1b,Silent:1b,Fixed:1b,Invisible:1b,Tags:["trackGridFrameCustom"],UUID:[I;113,121,211,15]}
$summon minecraft:item_frame ^-3 ^ ^ {Facing:$(facing),Invulnerable:1b,Silent:1b,Fixed:1b,Invisible:1b,Tags:["trackGridFrameCustom"],UUID:[I;113,121,211,16]}
$summon minecraft:item_frame ^-4 ^ ^ {Facing:$(facing),Invulnerable:1b,Silent:1b,Fixed:1b,Invisible:1b,Tags:["trackGridFrameCustom"],UUID:[I;113,121,211,17]}
$summon minecraft:item_frame ^-5 ^ ^ {Facing:$(facing),Invulnerable:1b,Silent:1b,Fixed:1b,Invisible:1b,Tags:["trackGridFrameCustom"],UUID:[I;113,121,211,18]}
