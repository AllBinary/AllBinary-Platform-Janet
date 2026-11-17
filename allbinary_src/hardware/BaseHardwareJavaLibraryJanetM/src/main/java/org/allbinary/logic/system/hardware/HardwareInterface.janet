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
# package org.allbinary.logic.system.hardware

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class HardwareInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getComponent nil)
(var jm_toString nil)
(var jm_compareTo nil)
(var jm_difference nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "HardwareInterface"} jproto))
    this))

    
(set jm_getComponent (fn jm_getComponent [this _index]
    (error (JR/newException "AbstractMethodError" "getComponent"))))
    
(set jm_toString (fn jm_toString [this]
    (error (JR/newException "AbstractMethodError" "toString"))))
    
(set jm_compareTo (fn jm_compareTo [this _hardwareInterface]
    (error (JR/newException "AbstractMethodError" "compareTo"))))
    
(set jm_difference (fn jm_difference [this _hardwareInterface]
    (error (JR/newException "AbstractMethodError" "difference"))))

(set jproto @{:jm_getComponent jm_getComponent :jm_toString jm_toString :jm_compareTo jm_compareTo :jm_difference jm_difference})


