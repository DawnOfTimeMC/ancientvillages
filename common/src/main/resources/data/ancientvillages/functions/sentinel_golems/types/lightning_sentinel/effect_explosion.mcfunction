stopsound @a[distance=..20] ambient
stopsound @a[distance=..20] block
stopsound @a[distance=..20] hostile

damage @p[distance=..7] 15
particle explosion ~ ~1 ~ 0 0 0 0.1 20 force
playsound minecraft:entity.generic.explode ambient @a[distance=..16] ~ ~ ~
