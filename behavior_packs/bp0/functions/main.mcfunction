
# Run every tick to handle world/game tasks





# Create a G (Global) entity, if one does not exist
tag @a add X.CHECK_G
execute @e[tag=X.G] ~ ~ ~ tag @a remove X.CHECK_G
execute @p[tag=X.CHECK_G] ~ ~ ~ event entity @e[type=x:g] x:despawn
execute @p[tag=X.CHECK_G] ~ ~ ~ summon x:g ~ -65 ~
execute @p[tag=X.CHECK_G] ~ ~ ~ tag @e[type=x:g] add X.G
tag @a remove X.CHECK_G



# Ensure only one G entity exists
execute @e[tag=X.G,c=1] ~ ~ ~ tag @s add X.G.CHECK_DUPLICATE
event entity @e[type=x:g,tag=!X.G.CHECK_DUPLICATE] x:despawn 
tag @e[tag=!X.G.CHECK_DUPLICATE] remove X.G
tag @e remove X.G.CHECK_DUPLICATE



# Check if intro button pressed
execute @e[tag=X.G] ~ ~ ~ detect 115 142 -3 stone_button 10 scoreboard players set X.GLOBAL X.INTRO_TICK 0
execute @e[tag=X.G] ~ ~ ~ detect 115 142 -3 stone_button 10 tag @s remove X.INTRO_OVER
execute @e[tag=X.G] ~ ~ ~ detect 115 142 -3 stone_button 10 tag @s add X.PLAY_INTRO



# Place triggers if not placed
execute @e[tag=X.G] ~ ~ ~ execute @e[tag=X.SPIDER_BOSS_TRIGGER] ~ ~ ~ tag @e[tag=X.G] add X.CHECK_TRIGGER
execute @e[tag=X.G,tag=!X.CHECK_TRIGGER] ~ ~ ~ tp 302 64 74
execute @e[tag=X.G,tag=!X.CHECK_TRIGGER] ~ ~ ~ summon x:marker 302 64 74
execute @e[tag=X.G,tag=!X.CHECK_TRIGGER] ~ ~ ~ tag @e[type=x:marker,tag=!X.SPIDER_BOSS_TRIGGER,tag=!X.SPIDER_BOSS_SPAWNER,c=1] add X.SPIDER_BOSS_TRIGGER
tag @e remove X.CHECK_TRIGGER



# Place spawner if not placed
execute @e[tag=X.G] ~ ~ ~ execute @e[tag=X.SPIDER_BOSS_SPAWNER] ~ ~ ~ tag @e[tag=X.G] add X.CHECK_SPAWNER
execute @e[tag=X.G,tag=!X.CHECK_SPAWNER] ~ ~ ~ tp 235 53 68
execute @e[tag=X.G,tag=!X.CHECK_SPAWNER] ~ ~ ~ summon x:marker 235 53 68
execute @e[tag=X.G,tag=!X.CHECK_SPAWNER] ~ ~ ~ tag @e[type=x:marker,tag=!X.SPIDER_BOSS_TRIGGER,tag=!X.SPIDER_BOSS_SPAWNER,c=1] add X.SPIDER_BOSS_SPAWNER
tag @e remove X.CHECK_SPAWNER



# Check whether to spawn spider boss
execute @e[type=spider:boss] ~ ~ ~ tag @e[tag=X.SPIDER_BOSS_TRIGGER,tag=!X.TRIGGERED] add X.CHECK_BOSS
execute @e[tag=X.SPIDER_BOSS_TRIGGER,tag=!X.TRIGGERED,tag=!X.CHECK_BOSS] ~ ~ ~ execute @p[r=5] ~ ~ ~ execute @e[tag=X.SPIDER_BOSS_SPAWNER] ~ ~ ~ summon spider:boss
execute @e[tag=X.SPIDER_BOSS_TRIGGER,tag=!X.TRIGGERED,tag=!X.CHECK_BOSS] ~ ~ ~ execute @p[r=5] ~ ~ ~ tag @e[tag=X.SPIDER_BOSS_TRIGGER] add X.TRIGGERED
tag @e remove X.CHECK_BOSS



# Reset trigger if noone nearby
execute @e[tag=X.TRIGGERED] ~ ~ ~ execute @p[r=1000] ~ ~ ~ tag @e[tag=X.TRIGGERED] add X.CHECK_TRIGGERED
execute @e[tag=X.TRIGGERED] ~ ~ ~ execute @e[type=spider:boss] ~ ~ ~ tag @e[tag=X.TRIGGERED] add X.CHECK_TRIGGERED
execute @e[tag=X.TRIGGERED,tag=!X.CHECK_TRIGGERED] ~ ~ ~ tag @s remove X.TRIGGERED
tag @e remove X.CHECK_TRIGGERED


# If multiple spiders spawned(glitch) despawn others
execute @e[type=spider:boss,c=1] ~ ~ ~ tag @s add X.CHECK_BOSS
execute @e[tag=X.CHECK_BOSS] ~ ~ ~ event entity @e[type=spider:boss,tag=!X.CHECK_BOSS,r=100] x:despawn
tag @e remove X.CHECK_BOSS



# # Summon item drop entity on invisible item drops, if missing
execute @e[type=x:bronze_axe_drop] ~ ~ ~ tag @e[type=item,name="Bronze Axe",c=1,r=0.001] add X.CHECK_BRONZE_AXE
execute @e[type=item,name="Bronze Axe",tag=!X.CHECK_BRONZE_AXE] ~ ~ ~ summon x:bronze_axe_drop ~ ~ ~ 
tag @e remove X.CHECK_BRONZE_AXE
execute @e[type=x:curved_sword_drop] ~ ~ ~ tag @e[type=item,name="Curved Sword",c=1,r=0.001] add X.CHECK_CURVED_SWORD
execute @e[type=item,name="Curved Sword",tag=!X.CHECK_CURVED_SWORD] ~ ~ ~ summon x:curved_sword_drop ~ ~ ~ 
tag @e remove X.CHECK_CURVED_SWORD
execute @e[type=x:dark_blade_drop] ~ ~ ~ tag @e[type=item,name="Dark Blade",c=1,r=0.001] add X.CHECK_DARK_BLADE
execute @e[type=item,name="Dark Blade",tag=!X.CHECK_DARK_BLADE] ~ ~ ~ summon x:dark_blade_drop ~ ~ ~ 
tag @e remove X.CHECK_DARK_BLADE
execute @e[type=x:double_axe_drop] ~ ~ ~ tag @e[type=item,name="Double Axe",c=1,r=0.001] add X.CHECK_DOUBLE_AXE
execute @e[type=item,name="Double Axe",tag=!X.CHECK_DOUBLE_AXE] ~ ~ ~ summon x:double_axe_drop ~ ~ ~ 
tag @e remove X.CHECK_DOUBLE_AXE
execute @e[type=x:emerald_broadsword_drop] ~ ~ ~ tag @e[type=item,name="Emerald Broadsword",c=1,r=0.001] add X.CHECK_EMERALD_BROADSWORD
execute @e[type=item,name="Emerald Broadsword",tag=!X.CHECK_EMERALD_BROADSWORD] ~ ~ ~ summon x:emerald_broadsword_drop ~ ~ ~ 
tag @e remove X.CHECK_EMERALD_BROADSWORD
execute @e[type=x:ice_spear_drop] ~ ~ ~ tag @e[type=item,name="Ice Spear",c=1,r=0.001] add X.CHECK_ICE_SPEAR
execute @e[type=item,name="Ice Spear",tag=!X.CHECK_ICE_SPEAR] ~ ~ ~ summon x:ice_spear_drop ~ ~ ~ 
tag @e remove X.CHECK_ICE_SPEAR
execute @e[type=x:nimble_dagger_drop] ~ ~ ~ tag @e[type=item,name="Nimble Dagger",c=1,r=0.001] add X.CHECK_NIMBLE_DAGGER
execute @e[type=item,name="Nimble Dagger",tag=!X.CHECK_NIMBLE_DAGGER] ~ ~ ~ summon x:nimble_dagger_drop ~ ~ ~ 
tag @e remove X.CHECK_NIMBLE_DAGGER
execute @e[type=x:royal_sword_drop] ~ ~ ~ tag @e[type=item,name="Royal Sword",c=1,r=0.001] add X.CHECK_ROYAL_SWORD
execute @e[type=item,name="Royal Sword",tag=!X.CHECK_ROYAL_SWORD] ~ ~ ~ summon x:royal_sword_drop ~ ~ ~ 
tag @e remove X.CHECK_ROYAL_SWORD
execute @e[type=x:valor_hammer_drop] ~ ~ ~ tag @e[type=item,name="Hammer of Valor",c=1,r=0.001] add X.CHECK_VALOR_HAMMER
execute @e[type=item,name="Hammer of Valor",tag=!X.CHECK_VALOR_HAMMER] ~ ~ ~ summon x:valor_hammer_drop ~ ~ ~ 
tag @e remove X.CHECK_VALOR_HAMMER
execute @e[type=x:vanguard_sword_drop] ~ ~ ~ tag @e[type=item,name="Vanguard Sword",c=1,r=0.001] add X.CHECK_VANGUARD_SWORD
execute @e[type=item,name="Vanguard Sword",tag=!X.CHECK_VANGUARD_SWORD] ~ ~ ~ summon x:vanguard_sword_drop ~ ~ ~ 
tag @e remove X.CHECK_VANGUARD_SWORD



# # Remove item drop if item missing
execute @e[type=item,name="Bronze Axe"] ~ ~ ~ tag @e[r=0.001,c=1,type=x:bronze_axe_drop] add X.CHECK_BRONZE_AXE
execute @e[type=x:bronze_axe_drop,tag=!X.CHECK_BRONZE_AXE] ~ ~ ~ event entity @s x:despawn
tag @e remove X.CHECK_BRONZE_AXE
execute @e[type=item,name="Curved Sword"] ~ ~ ~ tag @e[r=0.001,c=1,type=x:curved_sword_drop] add X.CHECK_CURVED_SWORD
execute @e[type=x:curved_sword_drop,tag=!X.CHECK_CURVED_SWORD] ~ ~ ~ event entity @s x:despawn
tag @e remove X.CHECK_CURVED_SWORD
execute @e[type=item,name="Dark Blade"] ~ ~ ~ tag @e[r=0.001,c=1,type=x:dark_blade_drop] add X.CHECK_DARK_BLADE
execute @e[type=x:dark_blade_drop,tag=!X.CHECK_DARK_BLADE] ~ ~ ~ event entity @s x:despawn
tag @e remove X.CHECK_DARK_BLADE
execute @e[type=item,name="Double Axe"] ~ ~ ~ tag @e[r=0.001,c=1,type=x:double_axe_drop] add X.CHECK_DOUBLE_AXE
execute @e[type=x:double_axe_drop,tag=!X.CHECK_DOUBLE_AXE] ~ ~ ~ event entity @s x:despawn
tag @e remove X.CHECK_DOUBLE_AXE
execute @e[type=item,name="Emerald Broadsword"] ~ ~ ~ tag @e[r=0.001,c=1,type=x:emerald_broadsword_drop] add X.CHECK_EMERALD_BROADSWORD
execute @e[type=x:emerald_broadsword_drop,tag=!X.CHECK_EMERALD_BROADSWORD] ~ ~ ~ event entity @s x:despawn
tag @e remove X.CHECK_EMERALD_BROADSWORD
execute @e[type=item,name="Ice Spear"] ~ ~ ~ tag @e[r=0.001,c=1,type=x:ice_spear_drop] add X.CHECK_ICE_SPEAR
execute @e[type=x:ice_spear_drop,tag=!X.CHECK_ICE_SPEAR] ~ ~ ~ event entity @s x:despawn
tag @e remove X.CHECK_ICE_SPEAR
execute @e[type=item,name="Nimble Dagger"] ~ ~ ~ tag @e[r=0.001,c=1,type=x:nimble_dagger_drop] add X.CHECK_NIMBLE_DAGGER
execute @e[type=x:nimble_dagger_drop,tag=!X.CHECK_NIMBLE_DAGGER] ~ ~ ~ event entity @s x:despawn
tag @e remove X.CHECK_NIMBLE_DAGGER
execute @e[type=item,name="Royal Sword"] ~ ~ ~ tag @e[r=0.001,c=1,type=x:royal_sword_drop] add X.CHECK_ROYAL_SWORD
execute @e[type=x:royal_sword_drop,tag=!X.CHECK_ROYAL_SWORD] ~ ~ ~ event entity @s x:despawn
tag @e remove X.CHECK_ROYAL_SWORD
execute @e[type=item,name="Hammer of Valor"] ~ ~ ~ tag @e[r=0.001,c=1,type=x:valor_hammer_drop] add X.CHECK_VALOR_HAMMER
execute @e[type=x:valor_hammer_drop,tag=!X.CHECK_VALOR_HAMMER] ~ ~ ~ event entity @s x:despawn
tag @e remove X.CHECK_VALOR_HAMMER
execute @e[type=item,name="Vanguard Sword"] ~ ~ ~ tag @e[r=0.001,c=1,type=x:vanguard_sword_drop] add X.CHECK_VANGUARD_SWORD
execute @e[type=x:vanguard_sword_drop,tag=!X.CHECK_VANGUARD_SWORD] ~ ~ ~ event entity @s x:despawn
tag @e remove X.CHECK_VANGUARD_SWORD




# Run dragon tasks
execute @e[tag=X.G] ~ ~ ~ function dragon_main



# Run player tasks
execute @e[tag=X.G] ~ ~ ~ function player_main



# Update hurt times
scoreboard objectives add X.HURT dummy
scoreboard players remove @e[scores={X.HURT=1..}] X.HURT 1
scoreboard players reset @e[scores={X.HURT=..0}] X.HURT



# Run intro tasks, if intro not over
execute @e[tag=X.G,tag=!X.INTRO_OVER] ~ ~ ~ function intro






