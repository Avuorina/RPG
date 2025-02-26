#> entity:hit/filters/0
#
# 攻撃先のエンティティを絞っていくらしい
#
# @within function entity:hit/

execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={0-0=true}}] if entity @s[tag=FindFlag0.0] run function entity:hit/fetch_entity
execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={0-1=true}}] if entity @s[tag=FindFlag0.1] run function entity:hit/fetch_entity