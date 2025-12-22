summon iron_golem ~ ~ ~ {Tags:["sentinel_golem", "sleep", "type_lightning"],NoAI:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b}
summon armor_stand ~0.36 ~1.16 ~-0.4 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["sentinel_rod"],HandItems:[{id:"minecraft:lightning_rod",Count:1b},{}],Pose:{RightArm:[270f,0f,0f]}}

scoreboard players set @e[tag=sentinel_golem,sort=nearest,limit=1] cooldown_timer 80
tag @e[tag=sentinel_golem,sort=nearest,limit=1] add cooldown