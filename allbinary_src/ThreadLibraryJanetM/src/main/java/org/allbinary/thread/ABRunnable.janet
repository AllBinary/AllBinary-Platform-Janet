# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
(import ../../../java/lang/Thread :as Thread)

# Java class ABRunnable
(var jproto nil)
(var jnew_0 nil)
(var jm_setThread nil)
(var jm_isRunning nil)
(var jm_setRunning nil)
(var jm_run nil)
(var jm_getType nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ABRunnable" :f_running false} jproto))
    (put this :f_running false)
    this))

    
(set jm_setThread (fn jm_setThread [this _thread]
    nil))
    
(set jm_isRunning (fn jm_isRunning [this]
    (label jreturn
        (return jreturn (this :f_running)))))
    
(set jm_setRunning (fn jm_setRunning [this _running]
        (set (this :f_running) _running)))
    
(set jm_run (fn jm_run [this]
    nil))
    
(set jm_getType (fn jm_getType [this]
    (label jreturn
        (return jreturn (JR/i32 (- 1))))))

(set jproto @{:jm_setThread jm_setThread :jm_isRunning jm_isRunning :jm_setRunning jm_setRunning :jm_run jm_run :jm_getType jm_getType})


