#when actionbarState2 hits zero, go back to state 0
scoreboard players remove @a[scores={actionbarState2=1..}] actionbarState2 1
scoreboard players set @a[scores={actionbarState2=..0,actionbarState=..0}] actionbarState 1
scoreboard players set @a[scores={actionbarState2=..0,actionbarState=2..}] actionbarState 1