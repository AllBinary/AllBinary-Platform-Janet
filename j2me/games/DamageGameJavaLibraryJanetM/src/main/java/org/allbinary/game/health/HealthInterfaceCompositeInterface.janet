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

# Java class HealthInterfaceCompositeInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getHealthInterface nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "HealthInterfaceCompositeInterface"} jproto))
    this))

    
(set jm_getHealthInterface (fn jm_getHealthInterface [this]
    (error (JR/newException "AbstractMethodError" "getHealthInterface"))))

(set jproto @{:jm_getHealthInterface jm_getHealthInterface})


