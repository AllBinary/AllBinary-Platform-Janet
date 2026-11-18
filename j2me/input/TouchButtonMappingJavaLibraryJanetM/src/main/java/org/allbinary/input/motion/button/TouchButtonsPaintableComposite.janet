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
# package org.allbinary.input.motion.button

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CompleteMotionGestureInputEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/CompleteMotionGestureInputEventHandler" "jm_getInstance" args))
(import ../../../../../org/allbinary/graphics/paint/ProcessPaintable :as ProcessPaintable)
(defn- TouchMotionGestureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" "jm_getInstance" args))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- EventStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/util/event/EventStrings" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))
(defn- TouchButtonsMappingPaintable/jnew_1 [& args] (JR/call jfile "./TouchButtonsMappingPaintable" "jnew_1" args))

# Java class TouchButtonsPaintableComposite
(var jproto nil)
(var jnew_2 nil)
(var jm_onEvent nil)
(var jm_onCompleteMotionGestureInputEvent nil)
(var jm_process nil)

    
(set jnew_2 (fn jnew_2 [_inputMappingInterface _basicColor]
    (var this (table/setproto @{:jclass "TouchButtonsPaintableComposite" :f_logUtil nil :f_commonStrings nil :f_inputMappingInterface nil :f_touchButtonsPaintable nil :f_timeHelper nil :f_released false :f_METHOD_NAME nil :f_RELEASE nil :f_FAST_REPEAT nil :f_IGNORE nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    
    
    (put this :f_timeHelper (TimeDelayHelper/jnew_1 250))
    (put this :f_released true)
    (put this :f_METHOD_NAME "onCompleteMotionGestureInputEvent")
    (put this :f_RELEASE "Ignoring: MotionGestureInput Release")
    (put this :f_FAST_REPEAT "Ignoring: MotionGestureInput Repeated To Quickly")
    (put this :f_IGNORE "Ignoring: Until Released")
    (JR/superInit this (ProcessPaintable/jnew_0))
        (set (this :f_inputMappingInterface) _inputMappingInterface)
        (:jm_addListenerInterface (CompleteMotionGestureInputEventHandler/jm_getInstance) this)
        (set (this :f_touchButtonsPaintable) (TouchButtonsMappingPaintable/jnew_1 _basicColor))
    this))
    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
        (ForcedLogUtil/jm_log ((EventStrings/jm_getInstance) :f_PERFORMANCE_MESSAGE) this)))
    
(set jm_onCompleteMotionGestureInputEvent (fn jm_onCompleteMotionGestureInputEvent [this _completeMotionGestureInputEvent]
    (label jreturn
        (try
            (do
            (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START) this "onCompleteMotionGestureInputEvent")
            (var _touchMotionGestureFactory (TouchMotionGestureFactory/jm_getInstance))
            (var _gameKeyCompleteMotionGestureInputEvent _completeMotionGestureInputEvent)
            (var _gameKey (:jm_getGameKey _gameKeyCompleteMotionGestureInputEvent))
            (var _motionGestureInput (:jm_getMotionGestureInput _completeMotionGestureInputEvent))
            (if (= _motionGestureInput (_touchMotionGestureFactory :f_RELEASED))
                (do
                (:jm_putF (this :f_logUtil) (this :f_RELEASE) this (this :f_METHOD_NAME))
                (set (this :f_released) true)
                (return jreturn)))
            (if (and (= _motionGestureInput ((TouchMotionGestureFactory/jm_getInstance) :f_NO_MOTION)) (not (:jm_isTimeTNT (this :f_timeHelper))))
                (do
                (:jm_putF (this :f_logUtil) (this :f_FAST_REPEAT) this (this :f_METHOD_NAME))
                (return jreturn)))
            (if (not (this :f_released))
                (do
                (:jm_putF (this :f_logUtil) (this :f_IGNORE) this (this :f_METHOD_NAME))
                (return jreturn)))
            (set (this :f_released) false)
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (:jm_append (:jm_append (StringMaker/jnew_0) "GameKey: ") (:jm_toString_1 (StringUtil/jm_getInstance) _gameKey)) " MotionGestureInput: ") (:jm_toString_1 (StringUtil/jm_getInstance) _motionGestureInput))) this (this :f_METHOD_NAME))
            (:jm_processInputMapping (this :f_inputMappingInterface) _gameKey _motionGestureInput))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this (this :f_METHOD_NAME) _e)))))))
    
(set jm_process (fn jm_process [this]
        (:jm_removeListener (CompleteMotionGestureInputEventHandler/jm_getInstance) this)))

(set jproto (table/setproto @{:jm_onEvent jm_onEvent :jm_onCompleteMotionGestureInputEvent jm_onCompleteMotionGestureInputEvent :jm_process jm_process} ProcessPaintable/jproto))


