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
# package org.allbinary.input.motion.trackball.action

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- PlatformInputMappingFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/input/PlatformInputMappingFactory" "jm_getInstance" args))
(import ../../../../../../org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent :as GameKeyCompleteMotionGestureInputEvent)
(defn- TrackballMotionGestureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/input/motion/gesture/TrackballMotionGestureFactory" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))

# Java class UpTrackballInputToGameKeyEventAction
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

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
    (var this (table/setproto @{:jclass "UpTrackballInputToGameKeyEventAction"} jproto))
        (JR/superInit this (GameKeyCompleteMotionGestureInputEvent/jnew_3 "Up Action" ((TrackballMotionGestureFactory/jm_getInstance) :f_UP) (JR/className (:jm_getPersistentInputMappingInstance (PlatformInputMappingFactory/jm_getInstance)))))
    this))

(set jproto (table/setproto @{} GameKeyCompleteMotionGestureInputEvent/jproto))


