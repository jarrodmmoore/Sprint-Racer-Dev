#this function handles the animation of netherite doors opening or closing

#1-9 = x-axis open
#11-19 = x-axis close
#21-29 = z=axis open
#31-39 = z=axis close

execute if entity @s[scores={scl_progress=1}] run clone 836 152 2854 844 160 2854 ~ ~ ~
execute if entity @s[scores={scl_progress=2}] run clone 836 152 2856 844 160 2856 ~ ~ ~
execute if entity @s[scores={scl_progress=3}] run clone 836 152 2858 844 160 2858 ~ ~ ~
execute if entity @s[scores={scl_progress=4}] run clone 836 152 2860 844 160 2860 ~ ~ ~
execute if entity @s[scores={scl_progress=5}] run clone 836 152 2862 844 160 2862 ~ ~ ~
execute if entity @s[scores={scl_progress=6}] run clone 836 152 2861 844 160 2861 ~ ~ ~
execute if entity @s[scores={scl_progress=7..9}] run scoreboard players set @s scl_progress -1

execute if entity @s[scores={scl_progress=11}] run clone 836 152 2861 844 160 2861 ~ ~ ~
execute if entity @s[scores={scl_progress=12}] run clone 836 152 2862 844 160 2862 ~ ~ ~
execute if entity @s[scores={scl_progress=13}] run clone 836 152 2860 844 160 2860 ~ ~ ~
execute if entity @s[scores={scl_progress=14}] run clone 836 152 2858 844 160 2858 ~ ~ ~
execute if entity @s[scores={scl_progress=15}] run clone 836 152 2856 844 160 2856 ~ ~ ~
execute if entity @s[scores={scl_progress=16}] run clone 836 152 2854 844 160 2854 ~ ~ ~
execute if entity @s[scores={scl_progress=17..19}] run scoreboard players set @s scl_progress -1

execute if entity @s[scores={scl_progress=21}] run clone 844 152 2864 844 160 2872 ~ ~ ~
execute if entity @s[scores={scl_progress=22}] run clone 842 152 2864 842 160 2872 ~ ~ ~
execute if entity @s[scores={scl_progress=23}] run clone 840 152 2864 840 160 2872 ~ ~ ~
execute if entity @s[scores={scl_progress=24}] run clone 838 152 2864 838 160 2872 ~ ~ ~
execute if entity @s[scores={scl_progress=25}] run clone 836 152 2864 836 160 2872 ~ ~ ~
execute if entity @s[scores={scl_progress=26}] run clone 837 152 2864 837 160 2872 ~ ~ ~
execute if entity @s[scores={scl_progress=27..29}] run scoreboard players set @s scl_progress -1

execute if entity @s[scores={scl_progress=31}] run clone 837 152 2864 837 160 2872 ~ ~ ~
execute if entity @s[scores={scl_progress=32}] run clone 836 152 2864 836 160 2872 ~ ~ ~
execute if entity @s[scores={scl_progress=33}] run clone 838 152 2864 838 160 2872 ~ ~ ~
execute if entity @s[scores={scl_progress=34}] run clone 840 152 2864 840 160 2872 ~ ~ ~
execute if entity @s[scores={scl_progress=35}] run clone 842 152 2864 842 160 2872 ~ ~ ~
execute if entity @s[scores={scl_progress=36}] run clone 844 152 2864 844 160 2872 ~ ~ ~
execute if entity @s[scores={scl_progress=37..39}] run scoreboard players set @s scl_progress -1

scoreboard players add @s scl_progress 1