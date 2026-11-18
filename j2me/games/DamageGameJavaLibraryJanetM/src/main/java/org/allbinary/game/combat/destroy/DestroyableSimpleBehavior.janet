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
# package org.allbinary.game.combat.destroy

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./DestroyableBaseBehavior :as DestroyableBaseBehavior)
(defn- DestroyedLayerProcessor/jm_getInstance [& args] (JR/call jfile "./DestroyedLayerProcessor" "jm_getInstance" args))

# Java class DestroyableSimpleBehavior
(var jproto nil)
(var jnew_1 nil)
(var jm_isDestroyed nil)
(var jm_setDestroyed nil)

    
(set jnew_1 (fn jnew_1 [_ownerLayer]
    (var this (table/setproto @{:jclass "DestroyableSimpleBehavior" :f_ownerLayer nil :f_destroyed false} jproto))
    
    (put this :f_destroyed false)
    (JR/superInit this (DestroyableBaseBehavior/jnew_0))
        (set (this :f_ownerLayer) _ownerLayer)
    this))
    
(set jm_isDestroyed (fn jm_isDestroyed [this]
    (label jreturn
        (return jreturn (this :f_destroyed)))))
    
(set jm_setDestroyed (fn jm_setDestroyed [this _destroyed]
        (set (this :f_destroyed) _destroyed)
        (if (:jm_isDestroyed this)
            (do
            (:jm_add (DestroyedLayerProcessor/jm_getInstance) (this :f_ownerLayer))))))

(set jproto (table/setproto @{:jm_isDestroyed jm_isDestroyed :jm_setDestroyed jm_setDestroyed} DestroyableBaseBehavior/jproto))


