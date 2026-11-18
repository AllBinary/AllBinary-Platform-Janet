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
# package org.allbinary.input.motion.gesture

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/PointFactory" "jm_getInstance" args))
(defn- MotionEventCircularPool/jm_createPool [& args] (JR/call jfile "../../../../../org/allbinary/input/motion/gesture/observer/MotionEventCircularPool" "jm_createPool" args))
(import ../../../../../java/lang/Integer :as Integer)

# Java class MirrorMotionGestureEventUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_mirrorVerticle nil)
(var jm_getNewX nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MirrorMotionGestureEventUtil" :f_motionEventCircularPool nil} jproto))
    
        (set (this :f_motionEventCircularPool) (MotionEventCircularPool/jm_createPool (Integer/jstatic_MAX_VALUE)))
    this))
    
(set jm_mirrorVerticle (fn jm_mirrorVerticle [this _motionGestureEvent _halfWidth]
    (label jreturn
        (var _event (:jm_getInstance (this :f_motionEventCircularPool) (:jm_getMotionGesture _motionGestureEvent)))
        (var _previousNewX (:jm_getNewX this (JR/className (:jm_getPreviousPoint _motionGestureEvent)) _halfWidth))
        (var _currentNewX (:jm_getNewX this (JR/className (:jm_getCurrentPoint _motionGestureEvent)) _halfWidth))
        (var _pointFactory (PointFactory/jm_getInstance))
        (var _mirroredPreviousPoint (:jm_createXY _pointFactory _previousNewX (JR/className (:jm_getPreviousPoint _motionGestureEvent))))
        (var _mirroredCurrentPoint (:jm_createXY _pointFactory _currentNewX (JR/className (:jm_getCurrentPoint _motionGestureEvent))))
        (:jm_setPreviousPoint _event _mirroredPreviousPoint)
        (:jm_setCurrentPoint _event _mirroredCurrentPoint)
        (return jreturn _event))))
    
(set jm_getNewX (fn jm_getNewX [this _x _halfWidth]
    (label jreturn
        (var _newX 0)
        (if (> _x _halfWidth)
            (do
            (set _newX (JR/i32 (- _halfWidth (JR/i32 (- _x _halfWidth))))))
            (do
            (set _newX (JR/i32 (+ _halfWidth (JR/i32 (- _halfWidth _x)))))))
        (return jreturn _newX))))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{:jm_mirrorVerticle jm_mirrorVerticle :jm_getNewX jm_getNewX})


