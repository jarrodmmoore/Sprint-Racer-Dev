#load chunks around us if they aren't loaded
execute unless loaded ~-32 ~ ~-32 run return run forceload add ~-32 ~-32 ~32 ~32
execute unless loaded ~-32 ~ ~32 run return run forceload add ~-32 ~-32 ~32 ~32
execute unless loaded ~32 ~ ~-32 run return run forceload add ~-32 ~-32 ~32 ~32
execute unless loaded ~32 ~ ~32 run return run forceload add ~-32 ~-32 ~32 ~32