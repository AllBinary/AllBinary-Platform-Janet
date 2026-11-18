#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# package org.allbinary.game.layer.special

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../org/allbinary/game/input/GameInputProcessor :as GameInputProcessor)

# Java class SpecialGameInputProcessor
(var jproto nil)
(var jnew_1 nil)

    
(set jnew_1 (fn jnew_1 [_collidableDestroyableDamageableLayer]
    (var this (table/setproto @{:jclass "SpecialGameInputProcessor" :f_collidableDestroyableDamageableLayer nil} jproto))
    
    (JR/superInit this (GameInputProcessor/jnew_0))
        (set (this :f_collidableDestroyableDamageableLayer) _collidableDestroyableDamageableLayer)
    this))

(set jproto (table/setproto @{} GameInputProcessor/jproto))


