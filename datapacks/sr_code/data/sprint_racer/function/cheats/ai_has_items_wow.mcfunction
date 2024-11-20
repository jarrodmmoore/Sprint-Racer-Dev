scoreboard players set @e[tag=ai] aiHasNormal 10
scoreboard players set @e[tag=ai] aiHasProjectile 10
scoreboard players set @e[tag=ai] aiHasMelee 10
scoreboard players set @e[tag=ai] aiHasDefense 10
scoreboard players set @e[tag=ai] aiHasSBoost 10
scoreboard players set @e[tag=ai] aiHasTrap 10

scoreboard players set @e[tag=ai] aiHasGlobal 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={math=1}] run scoreboard players set @e[tag=ai,limit=1,sort=random] aiHasGlobal 10