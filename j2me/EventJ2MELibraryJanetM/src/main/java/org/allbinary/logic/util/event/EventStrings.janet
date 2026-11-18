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
# package org.allbinary.logic.util.event

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class EventStrings
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "EventStrings" :f_PERFORMANCE_MESSAGE nil :f_TOTAL_LISTENERS nil :f_LISTENER_LABEL nil :f_FIRE_EVENT nil} jproto))
    (put this :f_PERFORMANCE_MESSAGE "Use Custom onEvent Methods for needed optimization")
    (put this :f_TOTAL_LISTENERS "Total Listeners: ")
    (put this :f_LISTENER_LABEL " Listener: ")
    (put this :f_FIRE_EVENT "fireEvent")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


