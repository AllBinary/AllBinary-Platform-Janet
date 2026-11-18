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
# package org.allbinary.game.input.mapping

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameKeyCompleteMotionGestureInputEventFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEventFactory" "jm_getInstance" args))
(defn- BasicTouchInputFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/input/motion/button/BasicTouchInputFactory" "jm_getInstance" args))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- EventStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/util/event/EventStrings" "jm_getInstance" args))

# Java class MotionInputMappingEventListener
(var jproto nil)
(var jnew_0 nil)
(var jm_onEvent nil)
(var jm_onInputMappingEvent nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MotionInputMappingEventListener"} jproto))
    this))

    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
        (ForcedLogUtil/jm_log ((EventStrings/jm_getInstance) :f_PERFORMANCE_MESSAGE) this)))
    
(set jm_onInputMappingEvent (fn jm_onInputMappingEvent [this _inputMappingEvent]
        (:jm_updateAll (GameKeyCompleteMotionGestureInputEventFactory/jm_getInstance))
        (:jm_updateAll (BasicTouchInputFactory/jm_getInstance) (:jm_getInputToGameKeyMapping _inputMappingEvent))))

(set jproto @{:jm_onEvent jm_onEvent :jm_onInputMappingEvent jm_onInputMappingEvent})


