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
# package org.allbinary.game.input.motion.action

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- EventStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/util/event/EventStrings" "jm_getInstance" args))

# Java class NoCompleteMotionGestureInputEventListener
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_onEvent nil)
(var jm_onCompleteMotionGestureInputEvent nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NoCompleteMotionGestureInputEventListener"} jproto))
    this))
    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
        (ForcedLogUtil/jm_log ((EventStrings/jm_getInstance) :f_PERFORMANCE_MESSAGE) this)))
    
(set jm_onCompleteMotionGestureInputEvent (fn jm_onCompleteMotionGestureInputEvent [this _completeMotionGestureInputEvent]
    nil))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{:jm_onEvent jm_onEvent :jm_onCompleteMotionGestureInputEvent jm_onCompleteMotionGestureInputEvent})


