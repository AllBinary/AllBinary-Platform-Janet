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
# package org.allbinary.game.combat.damage

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class DamageableBaseBehavior
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getName nil)
(var jm_damage nil)
(var jm_getDamage nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DamageableBaseBehavior"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (JR/className this)))))
    
(set jm_damage (fn jm_damage [this _damage _damageType]
    nil))
    
(set jm_getDamage (fn jm_getDamage [this _damageType]
    (label jreturn
        (return jreturn 6000))))

(set jproto @{:jm_getName jm_getName :jm_damage jm_damage :jm_getDamage jm_getDamage})


