#> entity:hit/filters/9
#
# 攻撃先のエンティティを絞っていくらしい
#
# @within function entity:hit/

execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={9-0=true}}] if entity @s[tag=FindFlag9.0] run function entity:hit/filters/8
execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={9-1=true}}] if entity @s[tag=FindFlag9.1] run function entity:hit/filters/8