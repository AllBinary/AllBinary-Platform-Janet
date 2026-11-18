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
(import ../../../../../org/allbinary/layer/NamedInterface :as NamedInterface)

# Java class DamageableInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_damage nil)
(var jm_getDamage nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DamageableInterface"} jproto))
    this))

    
(set jm_damage (fn jm_damage [this _damage _damageType]
    (error (JR/newException "AbstractMethodError" "damage"))))
    
(set jm_getDamage (fn jm_getDamage [this _damageType]
    (error (JR/newException "AbstractMethodError" "getDamage"))))

(set jproto @{:jm_damage jm_damage :jm_getDamage jm_getDamage})


