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
(defn- TouchMotionGestureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" "jm_getInstance" args))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class GameMotionGestureListener
(var jproto nil)
(var jnew_1 nil)
(var jm_onEvent nil)
(var jm_onUpMotionGestureEvent nil)
(var jm_onDownMotionGestureEvent nil)
(var jm_onLeftMotionGestureEvent nil)
(var jm_onRightMotionGestureEvent nil)
(var jm_onDiagonalDownRightMotionGestureEvent nil)
(var jm_onDiagonalDownLeftMotionGestureEvent nil)
(var jm_onDiagonalUpRightMotionGestureEvent nil)
(var jm_onDiagonalUpLeftMotionGestureEvent nil)
(var jm_onPressedMotionGestureEvent nil)
(var jm_released nil)
(var jm_onScrolledMotionGestureEvent nil)
(var jm_onMotionGestureEvent nil)

    
(set jnew_1 (fn jnew_1 [_signed]
    (var this (table/setproto @{:jclass "GameMotionGestureListener" :f_logUtil nil :f_commonStrings nil :f_motionGestureCollection nil :f_touchGestureCollection nil :f_signed nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_motionGestureCollection (BasicArrayListD/jnew_0))
    (put this :f_touchGestureCollection (BasicArrayListD/jnew_0))
    
        (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START) this ((this :f_commonStrings) :f_CONSTRUCTOR))
        (set (this :f_signed) _signed)
    this))
    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
        (ForcedLogUtil/jm_log ((this :f_commonStrings) :f_NOT_IMPLEMENTED) this)))
    
(set jm_onUpMotionGestureEvent (fn jm_onUpMotionGestureEvent [this _ev]
        (:jm_onMotionGestureEvent this _ev)))
    
(set jm_onDownMotionGestureEvent (fn jm_onDownMotionGestureEvent [this _ev]
        (:jm_onMotionGestureEvent this _ev)))
    
(set jm_onLeftMotionGestureEvent (fn jm_onLeftMotionGestureEvent [this _ev]
        (:jm_onMotionGestureEvent this _ev)))
    
(set jm_onRightMotionGestureEvent (fn jm_onRightMotionGestureEvent [this _ev]
        (:jm_onMotionGestureEvent this _ev)))
    
(set jm_onDiagonalDownRightMotionGestureEvent (fn jm_onDiagonalDownRightMotionGestureEvent [this _ev]
        (:jm_onMotionGestureEvent this _ev)))
    
(set jm_onDiagonalDownLeftMotionGestureEvent (fn jm_onDiagonalDownLeftMotionGestureEvent [this _ev]
        (:jm_onMotionGestureEvent this _ev)))
    
(set jm_onDiagonalUpRightMotionGestureEvent (fn jm_onDiagonalUpRightMotionGestureEvent [this _ev]
        (:jm_onMotionGestureEvent this _ev)))
    
(set jm_onDiagonalUpLeftMotionGestureEvent (fn jm_onDiagonalUpLeftMotionGestureEvent [this _ev]
        (:jm_onMotionGestureEvent this _ev)))
    
(set jm_onPressedMotionGestureEvent (fn jm_onPressedMotionGestureEvent [this _ev]
        (:jm_add (this :f_touchGestureCollection) (:jm_getMotionGesture _ev))))
    
(set jm_released (fn jm_released [this _ev]
        (try
            (do
            (:jm_add (this :f_touchGestureCollection) (:jm_getMotionGesture _ev))
            (:jm_onMotionGestureCompleted (this :f_signed) (this :f_touchGestureCollection))
            (:jm_clear (this :f_touchGestureCollection)))
            ([_e] (do
            (var _stringBuffer (StringMaker/jnew_0))
            (:jm_append _stringBuffer ((this :f_commonStrings) :f_EXCEPTION_LABEL))
            (:jm_append _stringBuffer (:jm_toString_1 (StringUtil/jm_getInstance) (:jm_getMotionGesture _ev)))
            (:jm_put (this :f_logUtil) (:jm_toString _stringBuffer) this "release" _e))))))
    
(set jm_onScrolledMotionGestureEvent (fn jm_onScrolledMotionGestureEvent [this _motionGestureEvent]
    nil))
    
(set jm_onMotionGestureEvent (fn jm_onMotionGestureEvent [this _ev]
        (try
            (do
            (var _motionGestureInput (:jm_getMotionGesture _ev))
            (if (= _motionGestureInput ((TouchMotionGestureFactory/jm_getInstance) :f_PRESSED))
                (do
                (:jm_onPressedMotionGestureEvent this _ev))
                (if (= _motionGestureInput ((TouchMotionGestureFactory/jm_getInstance) :f_RELEASED))
                (do
                (:jm_released this _ev))
                (do
                (:jm_add (this :f_motionGestureCollection) _motionGestureInput)
                (:jm_onMotionGestureCompleted (this :f_signed) (this :f_motionGestureCollection))
                (:jm_clear (this :f_motionGestureCollection))
                (:jm_clear (this :f_touchGestureCollection))))))
            ([_e] (do
            (var _stringBuffer (StringMaker/jnew_0))
            (:jm_append _stringBuffer ((this :f_commonStrings) :f_EXCEPTION_LABEL))
            (:jm_append _stringBuffer (:jm_toString_1 (StringUtil/jm_getInstance) (:jm_getMotionGesture _ev)))
            (:jm_put (this :f_logUtil) (:jm_toString _stringBuffer) this "onMotionGestureEvent" _e))))))

(set jproto @{:jm_onEvent jm_onEvent :jm_onUpMotionGestureEvent jm_onUpMotionGestureEvent :jm_onDownMotionGestureEvent jm_onDownMotionGestureEvent :jm_onLeftMotionGestureEvent jm_onLeftMotionGestureEvent :jm_onRightMotionGestureEvent jm_onRightMotionGestureEvent :jm_onDiagonalDownRightMotionGestureEvent jm_onDiagonalDownRightMotionGestureEvent :jm_onDiagonalDownLeftMotionGestureEvent jm_onDiagonalDownLeftMotionGestureEvent :jm_onDiagonalUpRightMotionGestureEvent jm_onDiagonalUpRightMotionGestureEvent :jm_onDiagonalUpLeftMotionGestureEvent jm_onDiagonalUpLeftMotionGestureEvent :jm_onPressedMotionGestureEvent jm_onPressedMotionGestureEvent :jm_released jm_released :jm_onScrolledMotionGestureEvent jm_onScrolledMotionGestureEvent :jm_onMotionGestureEvent jm_onMotionGestureEvent})


