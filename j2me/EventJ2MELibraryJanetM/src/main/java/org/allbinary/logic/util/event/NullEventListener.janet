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
# package org.allbinary.logic.util.event

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class NullEventListener
(var jproto nil)
(var jcell_NULL_EVENT_LISTENER :jnone)
(var jstatic_NULL_EVENT_LISTENER nil)
(var jsetstatic_NULL_EVENT_LISTENER nil)
(var jnew_0 nil)
(var jm_onEvent nil)

(set jstatic_NULL_EVENT_LISTENER (fn jstatic_NULL_EVENT_LISTENER []
  (when (= jcell_NULL_EVENT_LISTENER :jnone) (set jcell_NULL_EVENT_LISTENER (jnew_0)))
  jcell_NULL_EVENT_LISTENER))
(set jsetstatic_NULL_EVENT_LISTENER (fn jsetstatic_NULL_EVENT_LISTENER [value] (set jcell_NULL_EVENT_LISTENER value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullEventListener"} jproto))
    this))

    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
    nil))

(set jproto @{:jm_onEvent jm_onEvent})


