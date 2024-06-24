function sprint_racer:levels/highlight_city/map

#give night vision to all when night
execute if block 579 124 339 redstone_lamp[lit=true] run effect give @a night_vision 15 1 true