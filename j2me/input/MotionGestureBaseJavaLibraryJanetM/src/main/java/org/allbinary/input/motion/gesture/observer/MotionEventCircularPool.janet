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
(defn- InputFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/input/InputFactory" "jm_getInstance" args))
(defn- TouchMotionGestureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" "jm_getInstance" args))
(defn- AllBinaryEventCircularPool/jnew_1 [& args] (JR/call jfile "../../../../../../org/allbinary/logic/util/event/AllBinaryEventCircularPool" "jnew_1" args))
(defn- MotionEventFactory/jnew_2 [& args] (JR/call jfile "./MotionEventFactory" "jnew_2" args))

# Java class MotionEventCircularPool
(var jproto nil)
(var jnew_1 nil)
(var jm_createPool nil)
(var jm_getInstance nil)

    
(set jm_createPool (fn jm_createPool [_id]
    (label jreturn
        (return jreturn (jnew_1 _id)))))
    
(set jnew_1 (fn jnew_1 [_id]
    (var this (table/setproto @{:jclass "MotionEventCircularPool" :f_MIN 0 :f_eventPool nil} jproto))
    (put this :f_MIN (JR/className ((TouchMotionGestureFactory/jm_getInstance) :f_LAST_MOTION)))
    (put this :f_eventPool (AllBinaryEventCircularPool/jnew_1 (JR/i32 (- (JR/i32 (- ((InputFactory/jm_getInstance) :f_MAX) 1)) (this :f_MIN)))))
        (:jm_initAllBinaryEventCircularPool (this :f_eventPool) (MotionEventFactory/jnew_2 (this :f_eventPool) _id))
    this))
    
(set jm_getInstance (fn jm_getInstance [this _motionGestureInput]
    (label jreturn
        (return jreturn (:jm_getInstance (this :f_eventPool) (JR/i32 (- (:jm_getId _motionGestureInput) (this :f_MIN))))))))

(set jproto @{:jm_getInstance jm_getInstance})


