#> entity:hit/filters/2
#
# 攻撃先のエンティティを絞っていくらしい
#
# @within function entity:hit/

execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={2-0=true}}] if entity @s[tag=FindFlag2.0] run function entity:hit/filters/1
execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={2-1=true}}] if entity @s[tag=FindFlag2.1] run function entity:hit/filters/1