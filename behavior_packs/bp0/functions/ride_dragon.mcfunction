
# Run on ridden dragons so that their riders can fly them






tag @s add X.CHECK_RIDDEN

execute @p[tag=X.IS_RIDING] ~ ~ ~ execute @s[tag=X.IS_JUMPING] ~ ~ ~ effect @e[tag=X.CHECK_RIDDEN,c=1] levitation 1 50 true
execute @p[tag=X.IS_RIDING] ~ ~ ~ execute @s[tag=X.IS_JUMPING] ~ ~ ~ effect @e[tag=X.CHECK_RIDDEN,c=1] slow_falling 0 0 true

execute @p[tag=X.IS_RIDING] ~ ~ ~ execute @s[tag=!X.IS_JUMPING] ~ ~ ~ effect @e[tag=X.CHECK_RIDDEN,c=1] levitation 0 0 true
execute @p[tag=X.IS_RIDING] ~ ~ ~ execute @s[tag=!X.IS_JUMPING] ~ ~ ~ effect @e[tag=X.CHECK_RIDDEN,c=1] slow_falling 1 255 true

tag @s remove X.CHECK_RIDDEN