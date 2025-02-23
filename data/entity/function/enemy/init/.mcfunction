#> entity:enemy/init/
#
#
#
#

## 実行方法が違うので終わり。
    execute unless entity @s run \
tellraw @a [{"text":"\n"},{"color":"#570000","text":">"},{"color":"#9E0000","text":">"},{"bold":true,"color":"#FF0000","text":" 実行者が存在しません！終わり。"}]
    execute unless entity @s run return fail

## 初期タグ削除
    tag @s remove MobInit

## 共通タグ付与
    tag @s add MOB

## MOBID付与
    execute store result score @s ID run data get storage rpg_mob: ID

## データ適用
    function entity:enemy/init/apply_status/set_data
#summon armor_stand ~ ~-1 ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[DebugRoom,Sky,Shoot,NightmareEye,GiftMissile],Level:1}]]}}]}