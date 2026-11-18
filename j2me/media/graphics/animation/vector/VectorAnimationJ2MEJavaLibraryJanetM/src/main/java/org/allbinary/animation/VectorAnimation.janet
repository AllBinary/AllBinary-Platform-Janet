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
(import ./IndexedAnimation :as IndexedAnimation)

# Java class VectorAnimation
(var jproto nil)
(var jnew_3 nil)
(var jm_createVectorAnimation nil)
(var jm_setBasicColorP nil)
(var jm_changeBasicColor nil)
(var jm_setAlpha nil)
(var jm_setScale nil)
(var jm_setMaxScale nil)
(var jm_updateModifiers nil)
(var jm_getAnimationSize nil)
(var jm_getSize nil)
(var jm_setSequence nil)
(var jm_getSequence nil)
(var jm_nextFrame nil)
(var jm_previousFrame nil)
(var jm_paintVectors nil)
(var jm_paintXY nil)
(var jm_getFrame nil)
(var jm_setFrame nil)
(var jm_getPoints nil)
(var jm_setPoints nil)
(var jm_getBasicColorP nil)

    
(set jm_createVectorAnimation (fn jm_createVectorAnimation [_currentPoints2 _basicColor _animationBehavior]
    (label jreturn
        (var _currentPoints (seq [jindex1 :range [0 1]] (seq [jindex2 :range [0 (length _currentPoints2)]] (array/new-filled 2 0))))
        (var _size (length _currentPoints2))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set (((_currentPoints 0) _index) 0) ((_currentPoints2 _index) 0))
            (set (((_currentPoints 0) _index) 1) ((_currentPoints2 _index) 1)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (jnew_3 _currentPoints _basicColor _animationBehavior)))))
    
(set jnew_3 (fn jnew_3 [_currentPoints _basicColor _animationBehavior]
    (var this (table/setproto @{:jclass "VectorAnimation" :f_currentPoints nil :f_circularIndexUtil nil} jproto))
    (put this :f_currentPoints ((NullUtil/jm_getInstance) :f_NULL_INT_ARRAY_ARRAY_ARRAY))
    (put this :f_circularIndexUtil (CircularIndexUtil/jm_createInstance 0))
        (JR/superInit this (IndexedAnimation/jnew_1 _animationBehavior))
        (:jm_setPoints this _currentPoints)
        (:jm_setBasicColorP this _basicColor)
    this))
    
(set jm_setBasicColorP (fn jm_setBasicColorP [this _basicColor]
        (var _changed false)
        (if (or (nil? (:jm_getBasicColorP this)) (not= (:jm_intValue (:jm_getBasicColorP this)) (:jm_intValue _basicColor)))
            (do
            (set _changed true)))
        ((get IndexedAnimation/jproto :jm_setBasicColorP) this _basicColor)
        (if _changed
            (do
            (:jm_updateModifiers this)))))
    
(set jm_changeBasicColor (fn jm_changeBasicColor [this _basicColor]
        (var _changed false)
        (if (or (nil? (:jm_getChangeBasicColor this)) (not= (JR/className (:jm_getChangeBasicColor this)) (:jm_intValue _basicColor)))
            (do
            (set _changed true)))
        ((get IndexedAnimation/jproto :jm_changeBasicColor) this _basicColor)
        (if _changed
            (do
            (:jm_updateModifiers this)))))
    
(set jm_setAlpha (fn jm_setAlpha [this _alpha]
        (var _changed false)
        (if (not= (this :f_alphaP) _alpha)
            (do
            (set _changed true)))
        ((get IndexedAnimation/jproto :jm_setAlpha) this _alpha)
        (if _changed
            (do
            (:jm_updateModifiers this)))))
    
(set jm_setScale (fn jm_setScale [this _scaleX _scaleY]
    nil))
    
(set jm_setMaxScale (fn jm_setMaxScale [this _maxScaleX _maxScaleY]
    nil))
    
(set jm_updateModifiers (fn jm_updateModifiers [this]
    nil))
    
(set jm_getAnimationSize (fn jm_getAnimationSize [this]
    (label jreturn
        (return jreturn (:jm_getSize this)))))
    
(set jm_getSize (fn jm_getSize [this]
    (label jreturn
        (return jreturn (length (this :f_currentPoints))))))
    
(set jm_setSequence (fn jm_setSequence [this _sequence]
    nil))
    
(set jm_getSequence (fn jm_getSequence [this]
    (label jreturn
        (return jreturn (PrimitiveIntUtil/jm_getArrayInstance)))))
    
(set jm_nextFrame (fn jm_nextFrame [this]
        (:jm_next (this :f_circularIndexUtil))))
    
(set jm_previousFrame (fn jm_previousFrame [this]
        (:jm_previous (this :f_circularIndexUtil))))
    
(set jm_paintVectors (fn jm_paintVectors [this _graphics _x _y]
        (try
            (do
            (var _nextPointX 0)
            (var _nextPointY 0)
            (var _nextPoint nil)
            (var _point nil)
            (var _currentPointsFrame ((this :f_currentPoints) (:jm_getIndex (this :f_circularIndexUtil))))
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
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (JR/className (this :f_basicSetColorUtil))
        (:jm_paintVectors this _graphics _x _y)))
    
(set jm_getFrame (fn jm_getFrame [this]
    (label jreturn
        (return jreturn (:jm_getIndex (this :f_circularIndexUtil))))))
    
(set jm_setFrame (fn jm_setFrame [this _index]
        (:jm_setIndex (this :f_circularIndexUtil) _index)))
    
(set jm_getPoints (fn jm_getPoints [this _frame]
    (label jreturn
        (return jreturn ((this :f_currentPoints) _frame)))))
    
(set jm_setPoints (fn jm_setPoints [this _currentPoints]
        (set (this :f_currentPoints) _currentPoints)
        (set (this :f_circularIndexUtil) (CircularIndexUtil/jm_createInstance (length _currentPoints)))))
    
(set jm_getBasicColorP (fn jm_getBasicColorP [this]
    (label jreturn
        (return jreturn ((get IndexedAnimation/jproto :jm_getBasicColorP) this)))))

(set jproto (table/setproto @{:jm_setBasicColorP jm_setBasicColorP :jm_changeBasicColor jm_changeBasicColor :jm_setAlpha jm_setAlpha :jm_setScale jm_setScale :jm_setMaxScale jm_setMaxScale :jm_updateModifiers jm_updateModifiers :jm_getAnimationSize jm_getAnimationSize :jm_getSize jm_getSize :jm_setSequence jm_setSequence :jm_getSequence jm_getSequence :jm_nextFrame jm_nextFrame :jm_previousFrame jm_previousFrame :jm_paintVectors jm_paintVectors :jm_paintXY jm_paintXY :jm_getFrame jm_getFrame :jm_setFrame jm_setFrame :jm_getPoints jm_getPoints :jm_setPoints jm_setPoints :jm_getBasicColorP jm_getBasicColorP} IndexedAnimation/jproto))


