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
# package org.allbinary.debug

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class DebugInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_start nil)
(var jm_stop nil)
(var jm_getStartTime nil)
(var jm_getMaxTime nil)
(var jm_isRunning nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DebugInterface"} jproto))
    this))

    
(set jm_start (fn jm_start [this]
    (error (JR/newException "AbstractMethodError" "start"))))
    
(set jm_stop (fn jm_stop [this]
    (error (JR/newException "AbstractMethodError" "stop"))))
    
(set jm_getStartTime (fn jm_getStartTime [this]
    (error (JR/newException "AbstractMethodError" "getStartTime"))))
    
(set jm_getMaxTime (fn jm_getMaxTime [this]
    (error (JR/newException "AbstractMethodError" "getMaxTime"))))
    
(set jm_isRunning (fn jm_isRunning [this]
    (error (JR/newException "AbstractMethodError" "isRunning"))))

(set jproto @{:jm_start jm_start :jm_stop jm_stop :jm_getStartTime jm_getStartTime :jm_getMaxTime jm_getMaxTime :jm_isRunning jm_isRunning})


