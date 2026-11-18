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
# package org.allbinary.physics.movement

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class MovementInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_process nil)
(var jm_stop nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MovementInterface"} jproto))
    this))

    
(set jm_init (fn jm_init [this _speedBasicDecimal _angle _otherAngle]
    (error (JR/newException "AbstractMethodError" "init"))))
    
(set jm_process (fn jm_process [this _layer]
    (error (JR/newException "AbstractMethodError" "process"))))
    
(set jm_stop (fn jm_stop [this]
    (error (JR/newException "AbstractMethodError" "stop"))))

(set jproto @{:jm_init jm_init :jm_process jm_process :jm_stop jm_stop})


