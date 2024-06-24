#when actionbarState2 hits zero, go back to state 0
#unless the player is finished, in which case we send them to actionbarState 100
scoreboard players remove @a[scores={actionbarState2=1..}] actionbarState2 1
scoreboard players set @a[tag=playing,tag=!finished,scores={actionbarState2=..0,actionbarState=..0}] actionbarState 1
scoreboard players set @a[tag=playing,tag=!finished,scores={actionbarState2=..0,actionbarState=2..}] actionbarState 1
scoreboard players set @a[tag=playing,tag=finished,scores={actionbarState2=..0,actionbarState=0..99}] actionbarState -1
scoreboard players set @a[tag=!playing] actionbarState -10