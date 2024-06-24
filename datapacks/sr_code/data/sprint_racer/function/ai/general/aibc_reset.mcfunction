tag @e[distance=..10,tag=node,tag=AIBC,scores={AIBC_event=8}] add mightReset

tag @e[distance=..1,tag=mightReset,scores={AIBC_condition=1}] add willReset
tag @e[distance=..2,tag=mightReset,scores={AIBC_condition=2}] add willReset
tag @e[distance=..3,tag=mightReset,scores={AIBC_condition=3}] add willReset
tag @e[distance=..4,tag=mightReset,scores={AIBC_condition=4}] add willReset
tag @e[distance=..5,tag=mightReset,scores={AIBC_condition=5}] add willReset
tag @e[distance=..6,tag=mightReset,scores={AIBC_condition=6}] add willReset
tag @e[distance=..7,tag=mightReset,scores={AIBC_condition=7}] add willReset
tag @e[distance=..8,tag=mightReset,scores={AIBC_condition=8}] add willReset
tag @e[distance=..9,tag=mightReset,scores={AIBC_condition=9}] add willReset
tag @e[distance=..10,tag=mightReset,scores={AIBC_condition=10..}] add willReset


execute if entity @e[tag=willReset,distance=..10] run function sprint_racer:ai/general/reset

tag @e[tag=willReset,type=marker] remove willReset
tag @e[tag=mightReset,type=marker] remove mightReset