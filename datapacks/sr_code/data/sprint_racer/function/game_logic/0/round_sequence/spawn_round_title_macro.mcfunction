#scores don't resolve on translate components! let's do a macro instead
$summon armor_stand 1549 85 406 {Tags:["roundDisplay","roundText1"],CustomName:{translate:"sr.lobby.round_n_of_n",with:[{text:"$(num1)"},{text:"$(num2)"}],color:"white",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1b}
