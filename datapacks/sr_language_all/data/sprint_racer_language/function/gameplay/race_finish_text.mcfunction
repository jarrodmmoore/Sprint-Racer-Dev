#fallback subtitle message in case the following ones all fail
title @s subtitle ["",{text:"This is an error message!",color:"red",bold:true}]

#subtitle (self)
title @s[scores={finishPos=1}] subtitle ["",{translate:"sr.game.1st_place",color:"yellow",bold:true}]
title @s[scores={finishPos=2}] subtitle ["",{translate:"sr.game.2nd_place",color:"gray",bold:true}]
title @s[scores={finishPos=3}] subtitle ["",{translate:"sr.game.3rd_place",color:"gold",bold:true}]
title @s[scores={finishPos=4..20}] subtitle ["",{score:{name:"@s",objective:"finishPos"},color:"white",bold:true},{translate:"sr.game.nth_place",color:"white",bold:true}]
title @s[scores={finishPos=21}] subtitle ["",{translate:"sr.game.21st_place",color:"white",bold:true}]
title @s[scores={finishPos=22}] subtitle ["",{translate:"sr.game.22nd_place",color:"white",bold:true}]
title @s[scores={finishPos=23}] subtitle ["",{translate:"sr.game.23rd_place",color:"white",bold:true}]
title @s[scores={finishPos=24..30}] subtitle ["",{score:{name:"@s",objective:"finishPos"},color:"white",bold:true},{translate:"sr.game.nth_place",color:"white",bold:true}]
title @s[scores={finishPos=31}] subtitle ["",{translate:"sr.game.31st_place",color:"white",bold:true}]
title @s[scores={finishPos=32}] subtitle ["",{translate:"sr.game.32nd_place",color:"white",bold:true}]
title @s[scores={finishPos=33}] subtitle ["",{translate:"sr.game.33rd_place",color:"white",bold:true}]
title @s[scores={finishPos=34..}] subtitle ["",{translate:"sr.game.finished_in_position",color:"white",bold:true},{score:{name:"@s",objective:"finishPos"},color:"white",bold:true},{text:"!",color:"white",bold:true}]

#title (self)
title @s title ["",{translate:"sr.game.finished",color:"yellow",bold:true}]