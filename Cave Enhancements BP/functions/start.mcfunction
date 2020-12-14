#add water tag
execute @a ~~~ detect ~~~ water 0 tag @s add water
execute @a ~~~ detect ~~1~ water 0 tag @s add water
execute @a ~~~ detect ~~-0.1~ water 0 tag @s add water
execute @a ~~~ detect ~~~ flowing_water 0 tag @s add water
execute @a ~~~ detect ~~1~ flowing_water 0 tag @s add water
execute @a ~~~ detect ~~-0.1~ flowing_water 0 tag @s add water
#remove torch light every cycle
execute @a ~~~ fill ~7 ~10 ~7 ~-7 ~-10 ~-7 air 0 replace light_block 15
#set block when holding torch
execute @a[tag=torch,tag=!water] ~~~ detect ~~1~ air 0 setblock ~~1~ light_block 15
#expired torch
scoreboard objectives add expire dummy
execute @a ~~~ detect ~~1~ light_block 15 scoreboard players add @s[tag=torch,tag=!water] expire 1
execute @a ~~~ detect ~~2~ light_block 15 scoreboard players add @s[tag=torch,tag=!water] expire 1
execute @a ~~~ detect ~~3~ light_block 15 scoreboard players add @s[tag=torch,tag=!water] expire 1
execute @a ~~~ detect ~~4~ light_block 15 scoreboard players add @s[tag=torch,tag=!water] expire 1
execute @a ~~~ detect ~~-4~ light_block 15 scoreboard players add @s[tag=torch,tag=!water] expire 1
execute @a ~~~ detect ~~-3~ light_block 15 scoreboard players add @s[tag=torch,tag=!water] expire 1
execute @a ~~~ detect ~~-2~ light_block 15 scoreboard players add @s[tag=torch,tag=!water] expire 1
execute @a ~~~ detect ~-1~~ light_block 15 scoreboard players add @s[tag=torch,tag=!water] expire 1
clear @a[scores={expire=3600}] torch 0 1
scoreboard players set @a[scores={expire=3601..}] expire 0