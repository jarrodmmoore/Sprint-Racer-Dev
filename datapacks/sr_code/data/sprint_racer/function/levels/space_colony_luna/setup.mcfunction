fill 817 166 2844 817 167 2872 air

fill 808 173 2874 814 175 2874 air

clone 807 163 2873 815 164 2873 807 166 2873

clone 864 173 2830 864 173 2836 864 176 2830

fill 856 176 2838 862 176 2838 air

clone 902 158 2876 902 159 2888 902 161 2876
clone 912 158 2876 912 159 2888 912 161 2876

clone 844 152 2864 844 160 2872 867 176 2829
fill 855 176 2841 863 184 2841 air
clone 836 152 2854 844 160 2854 807 166 2842

scoreboard players set @e[type=marker,tag=node,tag=sc_luna_junction_3] AIBC_dir1 4
scoreboard players set @e[type=marker,tag=node,tag=sc_luna_junction_2] AIBC_dir1 11

tag @e[type=marker,tag=node,tag=sc_luna_cp2_1] add posCalc
tag @e[type=marker,tag=node,tag=sc_luna_cp2_2] remove posCalc
tag @e[type=marker,tag=node,tag=sc_luna_cp2_3] remove posCalc