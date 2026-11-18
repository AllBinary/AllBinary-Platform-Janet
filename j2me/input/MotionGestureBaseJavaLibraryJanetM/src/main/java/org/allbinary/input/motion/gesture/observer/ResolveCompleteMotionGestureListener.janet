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
(defn- CompleteMotionGestureInputEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/input/CompleteMotionGestureInputEventHandler" "jm_getInstance" args))
(defn- GameKeyFromMotionGestureEventListener/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/game/input/motion/action/GameKeyFromMotionGestureEventListener" "jnew_0" args))
(defn- MotionGestureConfigurationFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class ResolveCompleteMotionGestureListener
(var jproto nil)
(var jnew_0 nil)
(var jm_onMotionGestureCompleted nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ResolveCompleteMotionGestureListener" :f_logUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
        (var _commonStrings (CommonStrings/jm_getInstance))
        (:jm_putF (this :f_logUtil) "MotionGesture to CompleteMotionGesture Reciever" this (_commonStrings :f_CONSTRUCTOR))
        (:jm_addListener (CompleteMotionGestureInputEventHandler/jm_getInstance) (GameKeyFromMotionGestureEventListener/jnew_0))
    this))
    
(set jm_onMotionGestureCompleted (fn jm_onMotionGestureCompleted [this _list]
        (var _configuration (MotionGestureConfigurationFactory/jm_getInstance))
        (var _commandActionsList (:jm_getAssociateCommandActionsList _configuration))
        (var _size (:jm_size _commandActionsList))
        (do
            (var _index (JR/i32 (- _size 1)))
            (var jbreak false)
            (while (and (not jbreak) (>= _index 0))
                (label jcontinue
            (var _association ((_commandActionsList :f_objectArray) _index))
            (if (= (:jm_isMotionGestureArrayEquals _association _list) true)
                (do
                (var _completeMotionGestureInputEvent (:jm_getCommandAction _association))
                (:jm_fireEvent (CompleteMotionGestureInputEventHandler/jm_getInstance) _completeMotionGestureInputEvent)
                (do (set jbreak true) (return jcontinue)))))
                (unless jbreak (set _index (JR/i32 (- _index 1))))))))

(set jproto @{:jm_onMotionGestureCompleted jm_onMotionGestureCompleted})


