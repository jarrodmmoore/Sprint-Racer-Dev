tag @e[distance=..10,tag=node,tag=AIBC,type=marker,scores={AIBC_event=7}] add mightRedirect

tag @e[distance=..1,type=marker,tag=mightRedirect,scores={AIBC_condition=..1}] add willRedirect
tag @e[distance=..2,type=marker,tag=mightRedirect,scores={AIBC_condition=2}] add willRedirect
tag @e[distance=..3,type=marker,tag=mightRedirect,scores={AIBC_condition=3}] add willRedirect
tag @e[distance=..4,type=marker,tag=mightRedirect,scores={AIBC_condition=4}] add willRedirect
tag @e[distance=..5,type=marker,tag=mightRedirect,scores={AIBC_condition=5}] add willRedirect
tag @e[distance=..6,type=marker,tag=mightRedirect,scores={AIBC_condition=6}] add willRedirect
tag @e[distance=..7,type=marker,tag=mightRedirect,scores={AIBC_condition=7}] add willRedirect
tag @e[distance=..8,type=marker,tag=mightRedirect,scores={AIBC_condition=8}] add willRedirect
tag @e[distance=..9,type=marker,tag=mightRedirect,scores={AIBC_condition=9}] add willRedirect
tag @e[distance=..10,type=marker,tag=mightRedirect,scores={AIBC_condition=10..}] add willRedirect

tag @e[limit=1,sort=nearest,tag=willRedirect,type=marker] add gotcha

execute if entity @e[tag=gotcha,type=marker] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/force_redirect

tag @e[tag=gotcha] remove gotcha
tag @e[tag=willRedirect,type=marker] remove willRedirect
tag @e[tag=mightRedirect,type=marker] remove mightRedirect