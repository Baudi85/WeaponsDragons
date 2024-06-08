
# Run every tick while intro is playing





# Initialize scores
scoreboard objectives add X.INTRO_TICK dummy
scoreboard players add X.GLOBAL X.INTRO_TICK 0



# Get current time/position of intro sequence
scoreboard players operation @s X.INTRO_TICK = X.GLOBAL X.INTRO_TICK



# Run tasks corresponding to time/position

execute @s[scores={X.INTRO_TICK=..0}] ~ ~ ~ titleraw @a[x=105,y=142,z=-17,dx=19,dy=2,dz=16] actionbar { "rawtext": [ {"text":"§e§l [!] Push Button To Start "} ] }
execute @s[scores={X.INTRO_TICK=..0}] ~ ~ ~ xp -1000L @a
execute @s[scores={X.INTRO_TICK=..0}] ~ ~ ~ music stop

execute @s[scores={X.INTRO_TICK=1..1020}] ~ ~ ~ gamerule sendcommandfeedback false
execute @s[scores={X.INTRO_TICK=1..1020}] ~ ~ ~ gamerule doweathercycle false
execute @s[scores={X.INTRO_TICK=1..1020}] ~ ~ ~ gamerule dodaylightcycle false
execute @s[scores={X.INTRO_TICK=1..1020}] ~ ~ ~ gamerule doinsomnia false
execute @s[scores={X.INTRO_TICK=1..1020}] ~ ~ ~ gamerule falldamage false
execute @s[scores={X.INTRO_TICK=1..1020}] ~ ~ ~ gamemode a @a
execute @s[scores={X.INTRO_TICK=1..1020}] ~ ~ ~ time set day
execute @s[scores={X.INTRO_TICK=1..1020}] ~ ~ ~ weather clear
execute @s[scores={X.INTRO_TICK=1..1020}] ~ ~ ~ effect @a invisibility 1 255 true

execute @s[scores={X.INTRO_TICK=1}] ~ ~ ~ music play music.wd_intro 1.0
execute @s[scores={X.INTRO_TICK=1}] ~ ~ ~ titleraw @a actionbar { "rawtext": [ {"text":" "} ] }

execute @s[scores={X.INTRO_TICK=1..300}] ~ ~ ~ tp @a 105 138 75 -150 20
execute @s[scores={X.INTRO_TICK=101..180}] ~ ~ ~ titleraw @a actionbar { "rawtext": [ {"text":"§fWelcome to The Castle!"} ] }
execute @s[scores={X.INTRO_TICK=180..300}] ~ ~ ~ titleraw @a actionbar { "rawtext": [ {"text":"§fInside, you'll find crafting recipes for §depic weapons§f!"} ] }

execute @s[scores={X.INTRO_TICK=301..500}] ~ ~ ~ tp @a 123 116 171 -120 20
execute @s[scores={X.INTRO_TICK=301..400}] ~ ~ ~ titleraw @a actionbar { "rawtext": [ {"text":"§fYou can find §cgear§f for the §dweapons§f \nin chests around the §9villages§f."} ] }

execute @s[scores={X.INTRO_TICK=501..800}] ~ ~ ~ tp @a 306 96 326 -170 20
execute @s[scores={X.INTRO_TICK=501..600}] ~ ~ ~ titleraw @a actionbar { "rawtext": [ {"text":"§fExplore the world and \nstart your §2adventure§f!"} ] }
execute @s[scores={X.INTRO_TICK=601..700}] ~ ~ ~ titleraw @a actionbar { "rawtext": [ {"text":"§fLook out for §cwild dragons§f... \nYou may even get to tame and \nride them!"} ] }
execute @s[scores={X.INTRO_TICK=650}] ~ ~ ~ summon x:generic_dragon 318 130 300

execute @s[scores={X.INTRO_TICK=801..1000}] ~ ~ ~ tp @a 238 62 78 -170 20
execute @s[scores={X.INTRO_TICK=801..900}] ~ ~ ~ titleraw @a actionbar { "rawtext": [ {"text":"§fFight in §2dungeons§f scattered \nacross the world and take down \nthe giant §6spider boss§f."} ] }

execute @s[scores={X.INTRO_TICK=1001..1020}] ~ ~ ~ tp @a 115 117 -11 180 0
execute @s[scores={X.INTRO_TICK=1021}] ~ ~ ~ music stop 3.0
execute @s[scores={X.INTRO_TICK=1040}] ~ ~ ~ title @a times 60 60 60
execute @s[scores={X.INTRO_TICK=1040}] ~ ~ ~ titleraw @a subtitle { "rawtext": [ {"text":"§b§l by Eternal Creations "} ] }
execute @s[scores={X.INTRO_TICK=1040}] ~ ~ ~ titleraw @a title { "rawtext": [ {"text":"§g§l Weapons+Dragons "} ] }


execute @s[scores={X.INTRO_TICK=1040}] ~ ~ ~ spawnpoint @a 115 117 -11

execute @s[scores={X.INTRO_TICK=1041..}] ~ ~ ~ gamerule doweathercycle true
execute @s[scores={X.INTRO_TICK=1041..}] ~ ~ ~ gamerule dodaylightcycle true
execute @s[scores={X.INTRO_TICK=1041..}] ~ ~ ~ gamerule doinsomnia true
execute @s[scores={X.INTRO_TICK=1041..}] ~ ~ ~ gamerule falldamage true
execute @s[scores={X.INTRO_TICK=1041..}] ~ ~ ~ gamemode s @a
execute @s[scores={X.INTRO_TICK=1041..}] ~ ~ ~ time set day
execute @s[scores={X.INTRO_TICK=1041..}] ~ ~ ~ weather clear
execute @s[scores={X.INTRO_TICK=1041..}] ~ ~ ~ tag @s add X.INTRO_OVER
execute @s[scores={X.INTRO_TICK=1041..}] ~ ~ ~ tag @s remove X.PLAY_INTRO
execute @s[scores={X.INTRO_TICK=1041..}] ~ ~ ~ gamerule sendcommandfeedback true
execute @s[scores={X.INTRO_TICK=1041..}] ~ ~ ~ scoreboard players set X.GLOBAL X.INTRO_TICK 0



# Advance intro tick if intro playing
execute @s[tag=X.PLAY_INTRO] ~ ~ ~ scoreboard players add X.GLOBAL X.INTRO_TICK 1