
# Handles global dragon tasks





# Switch speeds when dragon grounded/airborne
execute @e[family=x:dragon] ~ ~ ~ execute @s[tag=!X.IS_GROUNDED] ~ ~ ~ effect @s speed 1 60 true
execute @e[family=x:dragon] ~ ~ ~ execute @s[tag=X.IS_GROUNDED] ~ ~ ~ effect @s speed 0 0 true



# Play fly sounds when dragon airborne
scoreboard objectives add X.FLAP_TICK dummy
execute @e[family=x:dragon] ~ ~ ~ scoreboard players add @s X.FLAP_TICK 1
execute @e[family=x:dragon,scores={X.FLAP_TICK=20..}] ~ ~ ~ scoreboard players set @s X.FLAP_TICK 0
execute @e[family=x:dragon] ~ ~ ~  execute @s[tag=!X.IS_GROUNDED,scores={X.FLAP_TICK=0}] ~ ~ ~ playsound mob.enderdragon.flap @a ~ ~ ~
execute @e[family=x:dragon] ~ ~ ~  execute @s[tag=!X.IS_GROUNDED,scores={X.FLAP_TICK=10}] ~ ~ ~ playsound mob.phantom.flap @a ~ ~ ~



# Run dragon riding tasks on all ridden dragons
execute @e[tag=X.IS_RIDDEN] ~ ~ ~ function ride_dragon 



# Run dragon breeding taks on all breeding dragons
execute @e[tag=X.IS_IN_LOVE] ~ ~ ~ function breed_dragon 
execute @e[family=x:dragon,tag=!X.IS_IN_LOVE] ~ ~ ~  tag @s remove X.IS_LOVED



# Run dragon egg hatching tasks on all hatching dragon eggs
execute @e[family=x:dragon_egg_hatched] ~ ~ ~ function hatch_dragon_egg 