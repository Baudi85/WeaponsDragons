
# Handles global player tasks





# Equip armor when using item

execute @a[tag=X.IS_USING_DRAGON_HELMET] ~ ~ ~ replaceitem entity @s slot.armor.head 0 destroy minecraft:netherite_helmet 1 0
execute @a[tag=X.IS_USING_DRAGON_HELMET] ~ ~ ~ event entity @s x:wear_dragon_armor_helmet
execute @a[tag=X.IS_USING_DRAGON_HELMET] ~ ~ ~ tag @s add X.WORE_DRAGON_HELMET
execute @a[tag=X.IS_USING_DRAGON_HELMET] ~ ~ ~ tag @s add X.IS_WEARING_DRAGON_HELMET
execute @a[tag=X.IS_USING_DRAGON_HELMET] ~ ~ ~ replaceitem entity @s slot.weapon.mainhand 0 destroy air
execute @a[tag=X.IS_USING_DRAGON_HELMET] ~ ~ ~ tag @s remove X.IS_USING_DRAGON_HELMET

execute @a[tag=X.IS_USING_DRAGON_CHESTPLATE] ~ ~ ~ replaceitem entity @s slot.armor.chest 0 destroy minecraft:netherite_chestplate 1 0
execute @a[tag=X.IS_USING_DRAGON_CHESTPLATE] ~ ~ ~ event entity @s x:wear_dragon_armor_chestplate
execute @a[tag=X.IS_USING_DRAGON_CHESTPLATE] ~ ~ ~ tag @s add X.WORE_DRAGON_CHESTPLATE
execute @a[tag=X.IS_USING_DRAGON_CHESTPLATE] ~ ~ ~ tag @s add X.IS_WEARING_DRAGON_CHESTPLATE
execute @a[tag=X.IS_USING_DRAGON_CHESTPLATE] ~ ~ ~ replaceitem entity @s slot.weapon.mainhand 0 destroy air
execute @a[tag=X.IS_USING_DRAGON_CHESTPLATE] ~ ~ ~ tag @s remove X.IS_USING_DRAGON_CHESTPLATE

execute @a[tag=X.IS_USING_DRAGON_LEGGINGS] ~ ~ ~ replaceitem entity @s slot.armor.legs 0 destroy minecraft:netherite_leggings 1 0
execute @a[tag=X.IS_USING_DRAGON_LEGGINGS] ~ ~ ~ event entity @s x:wear_dragon_armor_leggings
execute @a[tag=X.IS_USING_DRAGON_LEGGINGS] ~ ~ ~ tag @s add X.WORE_DRAGON_LEGGINGS
execute @a[tag=X.IS_USING_DRAGON_LEGGINGS] ~ ~ ~ tag @s add X.IS_WEARING_DRAGON_LEGGINGS
execute @a[tag=X.IS_USING_DRAGON_LEGGINGS] ~ ~ ~ replaceitem entity @s slot.weapon.mainhand 0 destroy air
execute @a[tag=X.IS_USING_DRAGON_LEGGINGS] ~ ~ ~ tag @s remove X.IS_USING_DRAGON_LEGGINGS

execute @a[tag=X.IS_USING_DRAGON_BOOTS] ~ ~ ~ replaceitem entity @s slot.armor.feet 0 destroy minecraft:netherite_boots 1 0
execute @a[tag=X.IS_USING_DRAGON_BOOTS] ~ ~ ~ event entity @s x:wear_dragon_armor_boots
execute @a[tag=X.IS_USING_DRAGON_BOOTS] ~ ~ ~ tag @s add X.WORE_DRAGON_BOOTS
execute @a[tag=X.IS_USING_DRAGON_BOOTS] ~ ~ ~ tag @s add X.IS_WEARING_DRAGON_BOOTS
execute @a[tag=X.IS_USING_DRAGON_BOOTS] ~ ~ ~ replaceitem entity @s slot.weapon.mainhand 0 destroy air
execute @a[tag=X.IS_USING_DRAGON_BOOTS] ~ ~ ~ tag @s remove X.IS_USING_DRAGON_BOOTS



# Give back armor item when unequipped

execute @a[tag=X.WORE_DRAGON_HELMET,tag=!X.IS_WEARING_DRAGON_HELMET] ~ ~ ~ give @s x:dragon_helmet 1
execute @a[tag=X.WORE_DRAGON_HELMET,tag=!X.IS_WEARING_DRAGON_HELMET] ~ ~ ~ clear @s minecraft:netherite_helmet -1 1
execute @a[tag=X.WORE_DRAGON_HELMET,tag=!X.IS_WEARING_DRAGON_HELMET] ~ ~ ~ event entity @s x:take_off_dragon_armor_helmet
execute @a[tag=X.WORE_DRAGON_HELMET,tag=!X.IS_WEARING_DRAGON_HELMET] ~ ~ ~ tag @s remove X.WORE_DRAGON_HELMET

execute @a[tag=X.WORE_DRAGON_CHESTPLATE,tag=!X.IS_WEARING_DRAGON_CHESTPLATE] ~ ~ ~ give @s x:dragon_chestplate 1
execute @a[tag=X.WORE_DRAGON_CHESTPLATE,tag=!X.IS_WEARING_DRAGON_CHESTPLATE] ~ ~ ~ clear @s minecraft:netherite_chestplate -1 1
execute @a[tag=X.WORE_DRAGON_CHESTPLATE,tag=!X.IS_WEARING_DRAGON_CHESTPLATE] ~ ~ ~ event entity @s x:take_off_dragon_armor_chestplate
execute @a[tag=X.WORE_DRAGON_CHESTPLATE,tag=!X.IS_WEARING_DRAGON_CHESTPLATE] ~ ~ ~ tag @s remove X.WORE_DRAGON_CHESTPLATE

execute @a[tag=X.WORE_DRAGON_LEGGINGS,tag=!X.IS_WEARING_DRAGON_LEGGINGS] ~ ~ ~ give @s x:dragon_leggings 1
execute @a[tag=X.WORE_DRAGON_LEGGINGS,tag=!X.IS_WEARING_DRAGON_LEGGINGS] ~ ~ ~ clear @s minecraft:netherite_leggings -1 1
execute @a[tag=X.WORE_DRAGON_LEGGINGS,tag=!X.IS_WEARING_DRAGON_LEGGINGS] ~ ~ ~ event entity @s x:take_off_dragon_armor_leggings
execute @a[tag=X.WORE_DRAGON_LEGGINGS,tag=!X.IS_WEARING_DRAGON_LEGGINGS] ~ ~ ~ tag @s remove X.WORE_DRAGON_LEGGINGS

execute @a[tag=X.WORE_DRAGON_BOOTS,tag=!X.IS_WEARING_DRAGON_BOOTS] ~ ~ ~ give @s x:dragon_boots 1
execute @a[tag=X.WORE_DRAGON_BOOTS,tag=!X.IS_WEARING_DRAGON_BOOTS] ~ ~ ~ clear @s minecraft:netherite_boots -1 1
execute @a[tag=X.WORE_DRAGON_BOOTS,tag=!X.IS_WEARING_DRAGON_BOOTS] ~ ~ ~ event entity @s x:take_off_dragon_armor_boots
execute @a[tag=X.WORE_DRAGON_BOOTS,tag=!X.IS_WEARING_DRAGON_BOOTS] ~ ~ ~ tag @s remove X.WORE_DRAGON_BOOTS




# Replenish netherite stand-ins

execute @a[tag=X.IS_WEARING_DRAGON_HELMET] ~ ~ ~ replaceitem entity @s slot.armor.head 0 destroy minecraft:netherite_helmet 1 0
execute @a[tag=X.IS_WEARING_DRAGON_CHESTPLATE] ~ ~ ~ replaceitem entity @s slot.armor.chest 0 destroy minecraft:netherite_chestplate 1 0
execute @a[tag=X.IS_WEARING_DRAGON_LEGGINGS] ~ ~ ~ replaceitem entity @s slot.armor.legs 0 destroy minecraft:netherite_leggings 1 0
execute @a[tag=X.IS_WEARING_DRAGON_BOOTS] ~ ~ ~ replaceitem entity @s slot.armor.feet 0 destroy minecraft:netherite_boots 1 0


# Apply armor effects
execute @a[tag=X.IS_WEARING_DRAGON_HELMET,tag=X.IS_WEARING_DRAGON_CHESTPLATE,tag=X.IS_WEARING_DRAGON_LEGGINGS,tag=X.IS_WEARING_DRAGON_BOOTS] ~ ~ ~ effect @s fire_resistance 1 0


# Apply weapon effects
execute @a[tag=X.EQUIPPED_BRONZE_AXE] ~ ~ ~ scoreboard objectives add X.HEALTH_BOOST dummy
execute @a[tag=X.EQUIPPED_BRONZE_AXE] ~ ~ ~ scoreboard players add @s X.HEALTH_BOOST 0
execute @a[tag=X.EQUIPPED_BRONZE_AXE,scores={X.HEALTH_BOOST=..0}] ~ ~ ~ effect @s absorption 10 0 true
execute @a[tag=X.EQUIPPED_BRONZE_AXE,scores={X.HEALTH_BOOST=..0}] ~ ~ ~ scoreboard players set @s X.HEALTH_BOOST 200
execute @a[tag=X.EQUIPPED_BRONZE_AXE,scores={X.HEALTH_BOOST=1..}] ~ ~ ~ scoreboard players remove @s X.HEALTH_BOOST 1 
execute @a[tag=!X.EQUIPPED_BRONZE_AXE,scores={X.HEALTH_BOOST=1..}] ~ ~ ~ effect @s absorption 0 
execute @a[tag=!X.EQUIPPED_BRONZE_AXE,scores={X.HEALTH_BOOST=1..}] ~ ~ ~ scoreboard players reset @s X.HEALTH_BOOST 
# execute @a[tag=X.EQUIPPED_BRONZE_AXE] ~ ~ ~ effect @s absorption 1 1 true
execute @a[tag=X.EQUIPPED_NIMBLE_DAGGER] ~ ~ ~ effect @s speed 1 1 true
execute @a[tag=X.EQUIPPED_VALOR_HAMMER] ~ ~ ~ effect @s jump_boost 1 1 true
execute @a[tag=X.EQUIPPED_DOUBLE_AXE] ~ ~ ~ effect @s regeneration 1 0 true
execute @a[tag=X.WEAPON_ATTACKING] ~ ~ ~ scoreboard players reset @s X.WEAPON_DELAY
execute @a[tag=X.EQUIPPED_VANGUARD_SWORD] ~ ~ ~ tag @s add X.HAD_EQUIPPED_VANGUARD_SWORD
execute @a[tag=X.EQUIPPED_VANGUARD_SWORD] ~ ~ ~ effect @s night_vision 12 0
execute @a[tag=!X.EQUIPPED_VANGUARD_SWORD,tag=X.HAD_EQUIPPED_VANGUARD_SWORD] ~ ~ ~ effect @s night_vision 0
execute @a[tag=!X.EQUIPPED_VANGUARD_SWORD,tag=X.HAD_EQUIPPED_VANGUARD_SWORD] ~ ~ ~ tag @s remove X.HAD_EQUIPPED_VANGUARD_SWORD
execute @a[tag=!X.EQUIPPED_VANGUARD_SWORD] ~ ~ ~ tag @s remove X.HAD_EQUIPPED_VANGUARD_SWORD
execute @a[tag=X.EQUIPPED_ROYAL_SWORD] ~ ~ ~ effect @s resistance 1 1 true



# Update weapon effect delays
scoreboard objectives add X.WEAPON_DELAY dummy
scoreboard players remove @a[scores={X.WEAPON_DELAY=1..}] X.WEAPON_DELAY 1
tag @a[scores={X.WEAPON_DELAY=..0}] add X.WEAPON_ATTACKING
execute @a[tag=X.WEAPON_ATTACKING,tag=X.EQUIPPED_DARK_BLADE] ~ ~ ~ execute @e[scores={X.HURT=1..},r=10,c=1] ~ ~ ~ effect @s[tag=!X.WEAPON_ATTACKING] wither 5 0
execute @a[tag=X.WEAPON_ATTACKING,tag=X.EQUIPPED_EMERALD_BROADSWORD] ~ ~ ~ execute @e[scores={X.HURT=1..},r=10,c=1] ~ ~ ~ effect @s[tag=!X.WEAPON_ATTACKING] poison 10 1
execute @a[tag=X.WEAPON_ATTACKING,tag=X.EQUIPPED_CURVED_SWORD] ~ ~ ~ execute @e[scores={X.HURT=1..},r=10,c=1] ~ ~ ~ effect @s[tag=!X.WEAPON_ATTACKING] levitation 2 5
execute @a[tag=X.WEAPON_ATTACKING,tag=X.EQUIPPED_ICE_SPEAR] ~ ~ ~ execute @e[scores={X.HURT=1..},r=10,c=1] ~ ~ ~ effect @s[tag=!X.WEAPON_ATTACKING] slowness 5 5
execute @a[tag=X.WEAPON_ATTACKING] ~ ~ ~ scoreboard players reset @s X.WEAPON_DELAY
execute @a[tag=X.WEAPON_ATTACKING] ~ ~ ~ tag @s remove X.WEAPON_ATTACKING