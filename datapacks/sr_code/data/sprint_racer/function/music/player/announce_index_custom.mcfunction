#player announces current playing music track to self
tellraw @s ["",{"text":" "}]
execute if entity @s[scores={BGMtrack=..0}] run tellraw @s ["",{"text":" "}]
execute if entity @s[scores={BGMtrack=1}] run function sprint_racer_ost:alternate/01_lobby/show_title_nologo
execute if entity @s[scores={BGMtrack=2}] run function sprint_racer_ost:alternate/02_lobby/show_title_nologo
execute if entity @s[scores={BGMtrack=3}] run function sprint_racer_ost:alternate/03_gameplay/show_title_nologo
execute if entity @s[scores={BGMtrack=4}] run function sprint_racer_ost:alternate/04_gameplay/show_title_nologo
execute if entity @s[scores={BGMtrack=5}] run function sprint_racer_ost:alternate/05_gameplay/show_title_nologo
execute if entity @s[scores={BGMtrack=6}] run function sprint_racer_ost:alternate/06_gameplay/show_title_nologo
execute if entity @s[scores={BGMtrack=7}] run function sprint_racer_ost:alternate/07_gameplay/show_title_nologo
execute if entity @s[scores={BGMtrack=8}] run function sprint_racer_ost:alternate/08_gameplay/show_title_nologo
execute if entity @s[scores={BGMtrack=9}] run function sprint_racer_ost:alternate/09_gameplay/show_title_nologo
execute if entity @s[scores={BGMtrack=10}] run function sprint_racer_ost:alternate/10_gameplay/show_title_nologo
execute if entity @s[scores={BGMtrack=11}] run function sprint_racer_ost:alternate/11_gameplay/show_title_nologo
execute if entity @s[scores={BGMtrack=12}] run function sprint_racer_ost:alternate/12_gameplay/show_title_nologo
execute if entity @s[scores={BGMtrack=13}] run function sprint_racer_ost:alternate/13_gameplay/show_title_nologo
execute if entity @s[scores={BGMtrack=14}] run function sprint_racer_ost:alternate/14_gameplay/show_title_nologo
execute if entity @s[scores={BGMtrack=15}] run function sprint_racer_ost:alternate/15_finish/show_title_nologo
execute if entity @s[scores={BGMtrack=16}] run function sprint_racer_ost:alternate/16_podium/show_title_nologo
execute if entity @s[scores={BGMtrack=17}] run function sprint_racer_ost:alternate/17_gauntlet/show_title_nologo
execute if entity @s[scores={BGMtrack=18}] run function sprint_racer_ost:alternate/18_gauntlet/show_title_nologo
execute if entity @s[scores={BGMtrack=19}] run function sprint_racer_ost:alternate/03_gameplay/show_title_nologo
execute if entity @s[scores={BGMtrack=20}] run function sprint_racer_ost:alternate/03_gameplay/show_title_nologo

execute if entity @s[scores={BGMtrack=21}] run function sprint_racer_ost:101_custom/show_title_nologo
execute if entity @s[scores={BGMtrack=22}] run function sprint_racer_ost:102_custom/show_title_nologo
execute if entity @s[scores={BGMtrack=23}] run function sprint_racer_ost:103_custom/show_title_nologo
execute if entity @s[scores={BGMtrack=24}] run function sprint_racer_ost:104_custom/show_title_nologo
execute if entity @s[scores={BGMtrack=25}] run function sprint_racer_ost:105_custom/show_title_nologo
execute if entity @s[scores={BGMtrack=26}] run function sprint_racer_ost:106_custom/show_title_nologo
execute if entity @s[scores={BGMtrack=27}] run function sprint_racer_ost:107_custom/show_title_nologo
execute if entity @s[scores={BGMtrack=28}] run function sprint_racer_ost:108_custom/show_title_nologo
execute if entity @s[scores={BGMtrack=29}] run function sprint_racer_ost:109_custom/show_title_nologo
execute if entity @s[scores={BGMtrack=30}] run function sprint_racer_ost:110_custom/show_title_nologo
execute if entity @s[scores={BGMtrack=31}] run function sprint_racer_ost:111_custom/show_title_nologo
execute if entity @s[scores={BGMtrack=32}] run function sprint_racer_ost:112_custom/show_title_nologo
execute if entity @s[scores={BGMtrack=33}] run function sprint_racer_ost:113_custom/show_title_nologo
execute if entity @s[scores={BGMtrack=34}] run function sprint_racer_ost:114_custom/show_title_nologo
execute if entity @s[scores={BGMtrack=35}] run function sprint_racer_ost:115_custom/show_title_nologo

execute if entity @s[scores={BGMtrack=36..}] run tellraw @s ["",{"text":" "}]