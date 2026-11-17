# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.thread

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class NullPriorityRunnable
(var jproto nil)
(var jnew_0 nil)
(var jm_getPriority nil)
(var jm_isDone nil)
(var jm_reset nil)
(var jm_run nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullPriorityRunnable"} jproto))
    this))

    
(set jm_getPriority (fn jm_getPriority [this]
    (label jreturn
        (return jreturn 0))))
    
(set jm_isDone (fn jm_isDone [this]
    (label jreturn
        (return jreturn true))))
    
(set jm_reset (fn jm_reset [this]
    nil))
    
(set jm_run (fn jm_run [this]
    nil))

(set jproto @{:jm_getPriority jm_getPriority :jm_isDone jm_isDone :jm_reset jm_reset :jm_run jm_run})


