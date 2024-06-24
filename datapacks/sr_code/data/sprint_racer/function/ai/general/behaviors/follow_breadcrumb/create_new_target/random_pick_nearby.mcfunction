#picks one of the 6 nearest breadcrumbs at random

tag @e[tag=AIBC,limit=6,sort=nearest,tag=!AIBC_deadend,tag=!elytraPath] add mightPickMe
tag @e[tag=AIBC,limit=1,sort=random,tag=!AIBC_deadend,tag=mightPickMe] add iwannabetheguy
tag @e[tag=mightPickMe] remove mightPickMe