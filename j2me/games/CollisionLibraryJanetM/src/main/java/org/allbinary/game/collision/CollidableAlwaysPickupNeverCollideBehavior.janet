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
# package org.allbinary.game.collision

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./CollidableNeverCollideBehavior :as CollidableNeverCollideBehavior)
(defn- CollisionTypeFactory/jm_getInstance [& args] (JR/call jfile "./CollisionTypeFactory" "jm_getInstance" args))

# Java class CollidableAlwaysPickupNeverCollideBehavior
(var jproto nil)
(var jnew_0 nil)
(var jm_getCollisionTypeWith nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CollidableAlwaysPickupNeverCollideBehavior"} jproto))
        (JR/superInit this (CollidableNeverCollideBehavior/jnew_1 true))
    this))
    
(set jm_getCollisionTypeWith (fn jm_getCollisionTypeWith [this _layerInterface]
    (label jreturn
        (return jreturn ((CollisionTypeFactory/jm_getInstance) :f_PICKUP)))))

(set jproto (table/setproto @{:jm_getCollisionTypeWith jm_getCollisionTypeWith} CollidableNeverCollideBehavior/jproto))


