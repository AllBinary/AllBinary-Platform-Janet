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
# package org.allbinary.input.motion.touch.action

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameKeyFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/input/GameKeyFactory" "jm_getInstance" args))
(defn- PlatformInputMappingFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/input/PlatformInputMappingFactory" "jm_getInstance" args))
(defn- GameKeyEventFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/input/event/GameKeyEventFactory" "jm_getInstance" args))
(import ../../../../../../org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent :as GameKeyCompleteMotionGestureInputEvent)
(defn- TouchMotionGestureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class ReleaseTouchInputToGameKeyEventAction
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_update nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (= (jstatic_instance) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_instance (jnew_0))))
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ReleaseTouchInputToGameKeyEventAction" :f_NONE nil} jproto))
    (put this :f_NONE ((GameKeyFactory/jm_getInstance) :f_NONE))
        (JR/superInit this (GameKeyCompleteMotionGestureInputEvent/jnew_3 "Release Action" ((TouchMotionGestureFactory/jm_getInstance) :f_RELEASED) (JR/className (:jm_getPersistentInputMappingInstance (PlatformInputMappingFactory/jm_getInstance)))))
        (try
            (do
            (:jm_setGameKey this (this :f_NONE))
            (:jm_setGameKeyEvent this (:jm_getInstanceForInput (GameKeyEventFactory/jm_getInstance) this (this :f_NONE))))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (JR/className (this :f_logUtil)))))
    this))
    
(set jm_update (fn jm_update [this]
    nil))

(set jproto (table/setproto @{:jm_update jm_update} GameKeyCompleteMotionGestureInputEvent/jproto))


