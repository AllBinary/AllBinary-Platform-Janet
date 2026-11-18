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
# package org.allbinary.game.input

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- TouchMotionGestureFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ../../../../org/allbinary/logic/util/event/AllBinaryEventObject :as AllBinaryEventObject)
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class CompleteMotionGestureInputEvent
(var jproto nil)
(var jnew_2 nil)
(var jm_setName nil)
(var jm_getName nil)
(var jm_setMotionGestureInput nil)
(var jm_getMotionGestureInput nil)

    
(set jnew_2 (fn jnew_2 [_name _motionGestureInput]
    (var this (table/setproto @{:jclass "CompleteMotionGestureInputEvent" :f_logUtil nil :f_name nil :f_motionGestureInput nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_name ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_motionGestureInput ((TouchMotionGestureFactory/jm_getInstance) :f_NO_MOTION))
        (JR/superInit this (AllBinaryEventObject/jnew_1 _motionGestureInput))
        (:jm_setName this _name)
        (try
            (do
            (:jm_setMotionGestureInput this _motionGestureInput))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this "InputToGameKeyEventAction" _e))))
    this))
    
(set jm_setName (fn jm_setName [this _name]
        (set (this :f_name) _name)))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))
    
(set jm_setMotionGestureInput (fn jm_setMotionGestureInput [this _motionGestureInput]
        (set (this :f_motionGestureInput) _motionGestureInput)))
    
(set jm_getMotionGestureInput (fn jm_getMotionGestureInput [this]
    (label jreturn
        (return jreturn (this :f_motionGestureInput)))))

(set jproto (table/setproto @{:jm_setName jm_setName :jm_getName jm_getName :jm_setMotionGestureInput jm_setMotionGestureInput :jm_getMotionGestureInput jm_getMotionGestureInput} AllBinaryEventObject/jproto))


