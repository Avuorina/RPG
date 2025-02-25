#> bank:entity/enemy/debug/ground/0000.just_skeleton/summon
#
# 元のMOBを召喚する
#
#

## 元のMOBの召喚
    summon wither_skeleton ~ ~ ~ {\
Tags:[MobInit,Test],\
Silent:true,\
PersistenceRequired:true,\
DeathLootTable:"bank:enemy/empty"\
}



## Statusの確立
    execute as @e[type=wither_skeleton,tag=MobInit,distance=..0.01,limit=1,sort=nearest] run function bank:entity/enemy/debug/ground/0000.just_skeleton/status