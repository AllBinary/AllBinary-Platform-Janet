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
# package org.allbinary.game.combat

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- DamageableBaseBehavior/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/combat/damage/DamageableBaseBehavior" "jm_getInstance" args))
(defn- DestroyableBaseBehavior/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/combat/destroy/DestroyableBaseBehavior" "jm_getInstance" args))

# Java class CombatBaseBehavior
(var jproto nil)
(var jcell_NULL_COMBAT_BEHAVIOR :jnone)
(var jstatic_NULL_COMBAT_BEHAVIOR nil)
(var jsetstatic_NULL_COMBAT_BEHAVIOR nil)
(var jnew_2 nil)
(var jm_getDamageableBaseBehavior nil)
(var jm_getDestroyableBaseBehavior nil)
(var jm_isReadyForExplosion nil)
(var jm_setReadyForExplosion nil)

(set jstatic_NULL_COMBAT_BEHAVIOR (fn jstatic_NULL_COMBAT_BEHAVIOR []
  (when (= jcell_NULL_COMBAT_BEHAVIOR :jnone) (set jcell_NULL_COMBAT_BEHAVIOR (jnew_2 (DamageableBaseBehavior/jm_getInstance) (DestroyableBaseBehavior/jm_getInstance))))
  jcell_NULL_COMBAT_BEHAVIOR))
(set jsetstatic_NULL_COMBAT_BEHAVIOR (fn jsetstatic_NULL_COMBAT_BEHAVIOR [value] (set jcell_NULL_COMBAT_BEHAVIOR value)))

    
(set jnew_2 (fn jnew_2 [_damageableBaseBehavior _destroyableBaseBehavior]
    (var this (table/setproto @{:jclass "CombatBaseBehavior" :f_damageableBaseBehavior nil :f_destroyableBaseBehavior nil :f_readyForExplosion false} jproto))
    
    
    
        (set (this :f_damageableBaseBehavior) _damageableBaseBehavior)
        (set (this :f_destroyableBaseBehavior) _destroyableBaseBehavior)
    this))
    
(set jm_getDamageableBaseBehavior (fn jm_getDamageableBaseBehavior [this]
    (label jreturn
        (return jreturn (this :f_damageableBaseBehavior)))))
    
(set jm_getDestroyableBaseBehavior (fn jm_getDestroyableBaseBehavior [this]
    (label jreturn
        (return jreturn (this :f_destroyableBaseBehavior)))))
    
(set jm_isReadyForExplosion (fn jm_isReadyForExplosion [this]
    (label jreturn
        (return jreturn (this :f_readyForExplosion)))))
    
(set jm_setReadyForExplosion (fn jm_setReadyForExplosion [this _readyForExplosion]
        (set (this :f_readyForExplosion) _readyForExplosion)))

(set jproto @{:jm_getDamageableBaseBehavior jm_getDamageableBaseBehavior :jm_getDestroyableBaseBehavior jm_getDestroyableBaseBehavior :jm_isReadyForExplosion jm_isReadyForExplosion :jm_setReadyForExplosion jm_setReadyForExplosion})


