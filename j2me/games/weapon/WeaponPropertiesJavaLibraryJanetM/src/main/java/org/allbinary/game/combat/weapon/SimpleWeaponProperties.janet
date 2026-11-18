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
# package org.allbinary.game.combat.weapon

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class SimpleWeaponProperties
(var jproto nil)
(var jnew_0 nil)
(var jm_set nil)
(var jm_setDamage nil)
(var jm_getDamage nil)
(var jm_setDissipation nil)
(var jm_getDissipation nil)
(var jm_getRange nil)
(var jm_setRange nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SimpleWeaponProperties" :f_damage 0 :f_dissipation 0 :f_range 0} jproto))
    
    
    
    this))

    
(set jm_set (fn jm_set [this _simpleWeaponProperties]
        (:jm_setDamage this (:jm_getDamage _simpleWeaponProperties))
        (:jm_setDissipation this (:jm_getDissipation _simpleWeaponProperties))
        (:jm_setRange this (:jm_getRange _simpleWeaponProperties))))
    
(set jm_setDamage (fn jm_setDamage [this _damage]
        (set (this :f_damage) _damage)))
    
(set jm_getDamage (fn jm_getDamage [this]
    (label jreturn
        (return jreturn (this :f_damage)))))
    
(set jm_setDissipation (fn jm_setDissipation [this _dissipation]
        (set (this :f_dissipation) _dissipation)))
    
(set jm_getDissipation (fn jm_getDissipation [this]
    (label jreturn
        (return jreturn (this :f_dissipation)))))
    
(set jm_getRange (fn jm_getRange [this]
    (label jreturn
        (return jreturn (this :f_range)))))
    
(set jm_setRange (fn jm_setRange [this _range]
        (set (this :f_range) _range)))

(set jproto @{:jm_set jm_set :jm_setDamage jm_setDamage :jm_getDamage jm_getDamage :jm_setDissipation jm_setDissipation :jm_getDissipation jm_getDissipation :jm_getRange jm_getRange :jm_setRange jm_setRange})


