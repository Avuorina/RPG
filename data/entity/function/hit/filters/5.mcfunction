#> entity:hit/filters/5
#
# 攻撃先のエンティティを絞っていくらしい
#
# @within function entity:hit/

execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={5-0=true}}] if entity @s[tag=FindFlag5.0] run function entity:hit/filters/4
execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={5-1=true}}] if entity @s[tag=FindFlag5.1] run function entity:hit/filters/4