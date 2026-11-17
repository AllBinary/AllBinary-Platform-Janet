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
# package org.allbinary.graphics.color

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/logic/util/event/handler/BasicEventHandler :as BasicEventHandler)

# Java class ColorChangeEventHandler
(var jproto nil)
(var jcell_eventHandler :jnone)
(var jstatic_eventHandler nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_eventHandler (fn jstatic_eventHandler []
  (when (= jcell_eventHandler :jnone) (set jcell_eventHandler (jnew_0)))
  jcell_eventHandler))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ColorChangeEventHandler"} jproto))
    this))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_eventHandler)))))

(set jproto (table/setproto @{} BasicEventHandler/jproto))


