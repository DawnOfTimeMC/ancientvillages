execute as @e[tag=sentinel_golem,tag=sleep] at @s run playsound minecraft:block.beacon.ambient ambient @a[distance=..15] ~ ~ ~ 0.5 1
execute as @e[tag=sentinel_golem,tag=sleep] at @s run playsound minecraft:block.amethyst_block.chime ambient @a[distance=..15] ~ ~ ~ 0.4 1.3

execute as @e[tag=sentinel_golem,tag=sleep] at @s run particle minecraft:enchant ~ ~1 ~ 1 1.2 1 0.05 4 force