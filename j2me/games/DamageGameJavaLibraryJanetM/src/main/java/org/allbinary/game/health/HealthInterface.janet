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
# package org.allbinary.game.health

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class HealthInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_isAlive nil)
(var jm_damage nil)
(var jm_heal nil)
(var jm_healMax nil)
(var jm_getMaxHealth nil)
(var jm_setMaxHealth nil)
(var jm_getHealth nil)
(var jm_addListener nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "HealthInterface"} jproto))
    this))

    
(set jm_isAlive (fn jm_isAlive [this]
    (error (JR/newException "AbstractMethodError" "isAlive"))))
    
(set jm_damage (fn jm_damage [this _ahealth]
    (error (JR/newException "AbstractMethodError" "damage"))))
    
(set jm_heal (fn jm_heal [this _ahealth]
    (error (JR/newException "AbstractMethodError" "heal"))))
    
(set jm_healMax (fn jm_healMax [this]
    (error (JR/newException "AbstractMethodError" "healMax"))))
    
(set jm_getMaxHealth (fn jm_getMaxHealth [this]
    (error (JR/newException "AbstractMethodError" "getMaxHealth"))))
    
(set jm_setMaxHealth (fn jm_setMaxHealth [this _maxHealth]
    (error (JR/newException "AbstractMethodError" "setMaxHealth"))))
    
(set jm_getHealth (fn jm_getHealth [this]
    (error (JR/newException "AbstractMethodError" "getHealth"))))
    
(set jm_addListener (fn jm_addListener [this _healthListenerInterface]
    (error (JR/newException "AbstractMethodError" "addListener"))))

(set jproto @{:jm_isAlive jm_isAlive :jm_damage jm_damage :jm_heal jm_heal :jm_healMax jm_healMax :jm_getMaxHealth jm_getMaxHealth :jm_setMaxHealth jm_setMaxHealth :jm_getHealth jm_getHealth :jm_addListener jm_addListener})


