#> main:tick
#
# 毎tick実行
#
#

## entityだぜ
    execute as @e[tag=Mob] at @s if entity @s run function entity:tick
#tellraw @a [{"score":{"name":"_","objective":"_"}},"     ",{"score":{"name":"_","objective":"Calc"}}]