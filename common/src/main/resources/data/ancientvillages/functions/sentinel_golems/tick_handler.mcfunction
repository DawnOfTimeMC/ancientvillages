function ancientvillages:sentinel_golems/idle_particles

execute as @e[tag=sentinel_golem,tag=cooldown] run scoreboard players remove @s cooldown_timer 1
execute as @e[tag=sentinel_golem,tag=cooldown] if score @s cooldown_timer matches ..0 run tag @s remove cooldown

execute as @e[tag=sentinel_golem,tag=sleep] at @s unless entity @s[tag=cooldown] if entity @p[distance=..3] run function ancientvillages:sentinel_golems/activate
