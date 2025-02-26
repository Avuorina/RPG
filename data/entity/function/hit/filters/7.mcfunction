#> entity:hit/filters/7
#
# 攻撃先のエンティティを絞っていくらしい
#
# @within function entity:hit/

execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={7-0=true}}] if entity @s[tag=FindFlag7.0] run function entity:hit/filters/6
execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={7-1=true}}] if entity @s[tag=FindFlag7.1] run function entity:hit/filters/6