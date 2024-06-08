
# Run on breeding dragons to lay eggs






tag @s add X.CHECK_IS_IN_LOVE

execute @s[tag=!X.IS_LOVED] ~ ~ ~ tag @e[tag=X.IS_IN_LOVE,tag=!X.CHECK_IS_IN_LOVE,tag=!X.IS_LOVED,r=5,c=1] add X.CHECK_IS_LOVER

execute @s[tag=!X.IS_LOVED,family=x:generic_dragon] ~ ~ ~ execute @e[tag=X.CHECK_IS_LOVER,family=x:generic_dragon,r=5,c=1] ~ ~ ~ summon x:dragon_egg ~ ~ ~ x:generic_dragon_egg
execute @s[tag=!X.IS_LOVED,family=x:nature_dragon] ~ ~ ~ execute @e[tag=X.CHECK_IS_LOVER,family=x:nature_dragon,r=5,c=1] ~ ~ ~ summon x:dragon_egg ~ ~ ~ x:nature_dragon_egg

execute @e[tag=X.CHECK_IS_LOVER] ~ ~ ~ tag @e[tag=X.CHECK_IS_IN_LOVE] add X.IS_LOVED
execute @e[tag=X.CHECK_IS_LOVER] ~ ~ ~ tag @s add X.IS_LOVED

tag @e remove X.CHECK_IS_IN_LOVE
tag @e remove X.CHECK_IS_LOVER