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

# Java class NoDebug
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_start nil)
(var jm_stop nil)
(var jm_getMaxTime nil)
(var jm_getStartTime nil)
(var jm_isRunning nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NoDebug"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_SINGLETON)))))
    
(set jm_start (fn jm_start [this]
    nil))
    
(set jm_stop (fn jm_stop [this]
    nil))
    
(set jm_getMaxTime (fn jm_getMaxTime [this]
    (label jreturn
        (return jreturn 10000))))
    
(set jm_getStartTime (fn jm_getStartTime [this]
    (label jreturn
        (return jreturn 0))))
    
(set jm_isRunning (fn jm_isRunning [this]
    (label jreturn
        (return jreturn false))))

(set jproto @{:jm_start jm_start :jm_stop jm_stop :jm_getMaxTime jm_getMaxTime :jm_getStartTime jm_getStartTime :jm_isRunning jm_isRunning})


