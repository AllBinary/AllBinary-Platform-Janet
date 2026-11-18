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
# package org.allbinary.animation

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- PrimitiveIntUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../org/allbinary/logic/math/PrimitiveIntUtil" "jm_getArrayInstance" args))
(defn- CircularIndexUtil/jm_createInstance [& args] (JR/call jfile "../../../org/allbinary/util/CircularIndexUtil" "jm_createInstance" args))
(import ./RotationAnimation :as RotationAnimation)

# Java class VectorBaseRotationAnimation
(var jproto nil)
(var jnew_4 nil)
(var jm_getAnimationSize nil)
(var jm_getFrame nil)
(var jm_setFrame nil)
(var jm_nextFrame nil)
(var jm_previousFrame nil)
(var jm_getSize nil)
(var jm_setSequence nil)
(var jm_getSequence nil)
(var jm_paintXY nil)
(var jm_getPoints nil)
(var jm_setPoints nil)
(var jm_getBasicColorP nil)
(var jm_setBasicColorP nil)

    
(set jnew_4 (fn jnew_4 [_angleInfo _currentPoints _basicColor _animationBehavior]
    (var this (table/setproto @{:jclass "VectorBaseRotationAnimation" :f_currentPoints nil} jproto))
    (put this :f_currentPoints ((NullUtil/jm_getInstance) :f_NULL_INT_ARRAY_ARRAY_ARRAY))
        (JR/superInit this (RotationAnimation/jnew_3 _angleInfo (CircularIndexUtil/jm_createInstance (JR/idiv 360 (JR/className (:jm_getAngleIncrementInfo _angleInfo)))) _animationBehavior))
        (:jm_setPoints this _currentPoints)
        (:jm_setBasicColorP this _basicColor)
    this))
    
(set jm_getAnimationSize (fn jm_getAnimationSize [this]
    (label jreturn
        (return jreturn (:jm_getSize this)))))
    
(set jm_getFrame (fn jm_getFrame [this]
    (label jreturn
        (return jreturn (JR/className (this :f_circularIndexUtil))))))
    
(set jm_setFrame (fn jm_setFrame [this _index]
        (JR/className (this :f_circularIndexUtil))))
    
(set jm_nextFrame (fn jm_nextFrame [this]
        (JR/className (this :f_circularIndexUtil))))
    
(set jm_previousFrame (fn jm_previousFrame [this]
        (JR/className (this :f_circularIndexUtil))))
    
(set jm_getSize (fn jm_getSize [this]
    (label jreturn
        (return jreturn (length (this :f_currentPoints))))))
    
(set jm_setSequence (fn jm_setSequence [this _sequence]
    nil))
    
(set jm_getSequence (fn jm_getSequence [this]
    (label jreturn
        (return jreturn (PrimitiveIntUtil/jm_getArrayInstance)))))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (JR/className (this :f_basicSetColorUtil))
        (try
            (do
            (var _nextPointX 0)
            (var _nextPointY 0)
            (var _nextPoint nil)
            (var _point nil)
            (var _currentPointsFrame ((this :f_currentPoints) (JR/className (this :f_circularIndexUtil))))
            (var _size (length _currentPointsFrame))
            (var _index (JR/i32 (- _size 2)))
            (do
                (while (>= (set _index (JR/i32 (- _index 1))) 0)
                    (do
                (set _nextPoint (_currentPointsFrame _index))
                (set _point (_currentPointsFrame (JR/i32 (+ _index 1))))
                (set _nextPointX (_nextPoint 0))
                (set _nextPointY (_nextPoint 1))
                (if (not= _nextPointX 1000)
                    (do
                    (:jm_drawLine _graphics (JR/i32 (+ (_point 0) _x)) (JR/i32 (+ (_point 1) _y)) (JR/i32 (+ _nextPointX _x)) (JR/i32 (+ _nextPointY _y))))
                    (do
                    (set _index (JR/i32 (- _index 1)))))))))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))
    
(set jm_getPoints (fn jm_getPoints [this _frame]
    (label jreturn
        (return jreturn ((this :f_currentPoints) _frame)))))
    
(set jm_setPoints (fn jm_setPoints [this _currentPoints]
        (set (this :f_currentPoints) _currentPoints)
        (set (this :f_circularIndexUtil) (CircularIndexUtil/jm_createInstance (length (this :f_currentPoints))))))
    
(set jm_getBasicColorP (fn jm_getBasicColorP [this]
    (label jreturn
        (return jreturn ((get RotationAnimation/jproto :jm_getBasicColorP) this)))))
    
(set jm_setBasicColorP (fn jm_setBasicColorP [this _basicColor]
        ((get RotationAnimation/jproto :jm_setBasicColorP) this _basicColor)))

(set jproto (table/setproto @{:jm_getAnimationSize jm_getAnimationSize :jm_getFrame jm_getFrame :jm_setFrame jm_setFrame :jm_nextFrame jm_nextFrame :jm_previousFrame jm_previousFrame :jm_getSize jm_getSize :jm_setSequence jm_setSequence :jm_getSequence jm_getSequence :jm_paintXY jm_paintXY :jm_getPoints jm_getPoints :jm_setPoints jm_setPoints :jm_getBasicColorP jm_getBasicColorP :jm_setBasicColorP jm_setBasicColorP} RotationAnimation/jproto))


