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
# package org.allbinary.input.motion.gesture.observer

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../../org/allbinary/logic/util/event/handler/BasicEventHandler :as BasicEventHandler)

# Java class MovedMotionGesturesHandler
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_process nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_SINGLETON)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MovedMotionGesturesHandler"} jproto))
    (JR/superInit this (BasicEventHandler/jnew_0))
    this))
    
(set jm_process (fn jm_process [this _eventObject _eventListenerInterface]
        (var _baseMotionGestureEventListener _eventListenerInterface)
        (:jm_onMotionGestureEvent _baseMotionGestureEventListener _eventObject)))

(set jproto (table/setproto @{:jm_process jm_process} BasicEventHandler/jproto))


