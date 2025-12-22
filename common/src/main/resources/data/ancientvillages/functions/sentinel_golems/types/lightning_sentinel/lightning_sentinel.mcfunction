summon armor_stand ~ ~ ~ {Tags:["random_picker"],Invisible:1b,Marker:1b,NoGravity:1b}

spreadplayers ~ ~ 0 3 false @e[tag=random_picker,limit=1]

execute as @e[tag=random_picker,limit=1,sort=nearest] at @s run teleport @s ~ ~ 0

execute store result score @s effect_roll run data get entity @e[tag=random_picker,limit=1,sort=nearest] Pos[0]

execute if score @s effect_roll matches ..-1 run function ancientvillages:sentinel_golems/types/lightning_sentinel/effect_explosion

execute if score @s effect_roll matches 0 run function ancientvillages:sentinel_golems/types/lightning_sentinel/effect_lightning

execute if score @s effect_roll matches 1.. run function ancientvillages:sentinel_golems/types/lightning_sentinel/effect_nothing

# execute unless entity @e[tag=random_picker,distance=..20] run function ancientvillages:sentinel_golems/types/lightning_sentinel/effect_lightning 

kill @e[tag=random_picker]

execute at @s positioned ~1 ~ ~ run function ancientvillages:golems/young_golem
execute at @s positioned ~-1 ~ ~ run function ancientvillages:golems/young_golem


