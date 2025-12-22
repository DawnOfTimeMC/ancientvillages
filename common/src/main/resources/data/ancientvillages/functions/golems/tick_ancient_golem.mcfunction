execute as @e[tag=ancient_golem] at @s run particle minecraft:campfire_cosy_smoke ~ ~1.5 ~-0.3 0.05 0.05 0.05 0.005 1 force
execute as @e[tag=ancient_golem] at @s run particle minecraft:ash ~ ~0.1 ~ 0.2 0.05 0.2 0.001 2 force

# Add +1 to redstone_timer every tick
execute as @e[tag=ancient_golem] run scoreboard players add @s redstone_timer 1

# Entry 1 — every 5 ticks
execute as @e[tag=ancient_golem] at @s if score @s redstone_timer matches 5 run particle dust 1.0 0.0 0.0 1.0 ^0 ^1 ^0 0.2 0.2 0.2 0.01 2 force

# Entry 2 — every 10 ticks
execute as @e[tag=ancient_golem] at @s if score @s redstone_timer matches 10 run particle dust 1.0 0.0 0.0 1.0 ^-0.25 ^1.4 ^0.2 0.2 0.2 0.2 0.01 2 force

# Entry 3 — every 15 ticks
execute as @e[tag=ancient_golem] at @s if score @s redstone_timer matches 15 run particle dust 1.0 0.0 0.0 1.0 ^0 ^2.1 ^0 0.2 0.2 0.2 0.01 2 force

# Reset + visible message in chat
execute as @e[tag=ancient_golem] if score @s redstone_timer matches 15 run scoreboard players set @s redstone_timer 0

