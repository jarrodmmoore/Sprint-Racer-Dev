#we don't for sure know that the chunks containing all our stuff are loaded
#SO.. we're going to wait for those chunks to load and then inspect them for anything that's wrong, then fix it

#supermarket
execute if block 1513 78 -776 air if block 1534 81 -776 air unless block 1513 78 -777 air run fill 1513 78 -777 1534 81 -777 air replace red_stained_glass

#alleyway with diamond boost
execute if block 1458 71 -886 air unless block 1458 71 -887 air run fill 1458 71 -887 1462 74 -887 air

#switch color
execute if block 1501 70 -899 air unless block 1501 69 -899 lime_wool run fill 1501 69 -899 1501 69 -897 lime_wool