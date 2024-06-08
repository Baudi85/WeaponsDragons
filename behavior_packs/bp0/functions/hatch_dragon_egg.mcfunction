
# Run on hatching dragon eggs to spawn baby dragons





#
execute @s[tag=!X.EGG_HATCHED] ~ ~ ~ particle minecraft:egg_destroy_emitter ~ ~ ~
execute @s[tag=!X.EGG_HATCHED] ~ ~ ~ particle minecraft:egg_destroy_emitter ~ ~1 ~
execute @s[tag=!X.EGG_HATCHED] ~ ~ ~ particle minecraft:egg_destroy_emitter ~ ~2 ~
execute @s[tag=!X.EGG_HATCHED] ~ ~ ~ particle minecraft:egg_destroy_emitter ~ ~3 ~
execute @s[tag=!X.EGG_HATCHED,family=x:generic_dragon_egg] ~ ~ ~ summon x:generic_dragon ~ ~1 ~ minecraft:entity_born
execute @s[tag=!X.EGG_HATCHED,family=x:nature_dragon_egg] ~ ~ ~ summon x:nature_dragon ~ ~1 ~ minecraft:entity_born
tag @s add X.EGG_HATCHED
