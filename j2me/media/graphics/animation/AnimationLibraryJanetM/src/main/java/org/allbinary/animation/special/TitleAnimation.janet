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
# package org.allbinary.animation.special

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- IndexedAnimationBehavior/jnew_2 [& args] (JR/call jfile "../../../../org/allbinary/animation/IndexedAnimationBehavior" "jnew_2" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- ABSystemWrapper/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/ABSystemWrapper" "jm_getInstance" args))
(defn- PrimitiveIntUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/PrimitiveIntUtil" "jm_getArrayInstance" args))
(import ../../../../java/lang/Integer :as Integer)
(import ./SpecialAnimation :as SpecialAnimation)

# Java class TitleAnimation
(var jproto nil)
(var jnew_7 nil)
(var jm_createAnimation nil)
(var jm_nextFrame nil)
(var jm_isComplete nil)
(var jm_setSequence nil)
(var jm_getSequence nil)
(var jm_getSize nil)
(var jm_getFrame nil)
(var jm_setFrame nil)
(var jm_setLastFrame nil)
(var jm_reset nil)
(var jm_previousFrame nil)
(var jm_paintFrameXY nil)
(var jm_paintXY nil)

    
(set jm_createAnimation (fn jm_createAnimation [_animationInterfaceArray _basicColorArray _dxArray _dyArray _y _width]
    (label jreturn
        (return jreturn (jnew_7 _animationInterfaceArray _basicColorArray _dxArray _dyArray _y _width (IndexedAnimationBehavior/jnew_2 1 250))))))
    
(set jnew_7 (fn jnew_7 [_animationInterfaceArray _basicColorArray _dxArray _dyArray _y _width _animationBehavior]
    (var this (table/setproto @{:jclass "TitleAnimation" :f_systemWrapper nil :f_deltaX 0.0 :f_deltaY 0.0 :f_deltaZ 0.0 :f_basicColorArray nil :f_dxArray nil :f_dyArray nil :f_widthP 0 :f_animationInterfaceArray nil :f_sizeP 0 :f_y 0 :f_lastFrameStartTime 0 :f_displayInfoSingleton nil :f_CLEAR_COLOR nil} jproto))
    (put this :f_systemWrapper (ABSystemWrapper/jm_getInstance))
    
    
    
    
    
    
    
    
    
    
    
    (put this :f_displayInfoSingleton (DisplayInfoSingleton/jm_getInstance))
    (put this :f_CLEAR_COLOR ((BasicColorFactory/jm_getInstance) :f_CLEAR_COLOR))
        (JR/superInit this (SpecialAnimation/jnew_1 _animationBehavior))
        (set (this :f_lastFrameStartTime) (:jm_currentTimeMillis (this :f_systemWrapper)))
        (set (this :f_animationInterfaceArray) _animationInterfaceArray)
        (set (this :f_sizeP) (length (this :f_animationInterfaceArray)))
        (set (this :f_basicColorArray) _basicColorArray)
        (set (this :f_dxArray) _dxArray)
        (set (this :f_dyArray) _dyArray)
        (set (this :f_y) _y)
        (set (this :f_widthP) _width)
        (:jm_reset this)
    this))
    
(set jm_nextFrame (fn jm_nextFrame [this]
        (var _currentTime (:jm_currentTimeMillis (this :f_systemWrapper)))
        (var _totalTimeElapsed (- _currentTime (this :f_lastFrameStartTime)))
        (var _indexedAnimationBehavior (:jm_getAnimationBehavior this))
        (if (> _totalTimeElapsed (_indexedAnimationBehavior :f_frameDelayTime))
            (do
            (:jm_previousFrame this)
            (set (this :f_lastFrameStartTime) _currentTime)))
        (if (= (JR/className ((this :f_animationInterfaceArray) 0)) 0)
            (do
            (set (_indexedAnimationBehavior :f_loopIndex) (JR/i32 (+ (_indexedAnimationBehavior :f_loopIndex) 1)))))))
    
(set jm_isComplete (fn jm_isComplete [this]
    (label jreturn
        (var _indexedAnimationBehavior (:jm_getAnimationBehavior this))
        (if (or (or (= (_indexedAnimationBehavior :f_loopTotal) (JR/i32 (- 1))) (< (_indexedAnimationBehavior :f_loopIndex) (_indexedAnimationBehavior :f_loopTotal))) (not= (:jm_getFrame this) 0))
            (do
            (return jreturn false))
            (do
            (return jreturn true))))))
    
(set jm_setSequence (fn jm_setSequence [this _sequence]
    nil))
    
(set jm_getSequence (fn jm_getSequence [this]
    (label jreturn
        (return jreturn (PrimitiveIntUtil/jm_getArrayInstance)))))
    
(set jm_getSize (fn jm_getSize [this]
    (label jreturn
        (return jreturn (JR/className ((this :f_animationInterfaceArray) 0))))))
    
(set jm_getFrame (fn jm_getFrame [this]
    (label jreturn
        (return jreturn (JR/className ((this :f_animationInterfaceArray) 0))))))
    
(set jm_setFrame (fn jm_setFrame [this _frame]
        (do
            (var _index 0)
            (while (< _index (this :f_sizeP))
                (do
            (JR/className ((this :f_animationInterfaceArray) _index)))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_setLastFrame (fn jm_setLastFrame [this]
        (:jm_setFrame this (JR/i32 (- (:jm_getSize this) 1)))))
    
(set jm_reset (fn jm_reset [this]
        (:jm_setLastFrame this)
        (var _indexedAnimationBehavior (:jm_getAnimationBehavior this))
        (:jm_reset _indexedAnimationBehavior)))
    
(set jm_previousFrame (fn jm_previousFrame [this]
        (do
            (var _index 0)
            (while (< _index (this :f_sizeP))
                (do
            (JR/className ((this :f_animationInterfaceArray) _index)))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_paintFrameXY (fn jm_paintFrameXY [this _graphics _frame _x _y]
        (:jm_setFrame this _frame)
        (:jm_paintXY this _graphics _x _y)))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _ax _ay]
        (var _x 0)
        (if (not= (this :f_widthP) (Integer/jstatic_MIN_VALUE))
            (do
            (set _x (JR/idiv (JR/i32 (- (:jm_getLastWidth (this :f_displayInfoSingleton)) (this :f_widthP))) 2))))
        (var _deltaX 0)
        (var _deltaY 0)
        (do
            (var _index 0)
            (while (< _index (this :f_sizeP))
                (do
            (set _deltaX (JR/i32 (+ ((this :f_dxArray) _index) _x)))
            (set _deltaY (JR/i32 (+ ((this :f_dyArray) _index) (this :f_y))))
            (if (not= ((this :f_basicColorArray) _index) (this :f_CLEAR_COLOR))
                (do
                (JR/className (this :f_basicSetColorUtil))))
            (JR/className ((this :f_animationInterfaceArray) _index)))
                (do (set _index (JR/i32 (+ _index 1))))))))

(set jproto (table/setproto @{:jm_nextFrame jm_nextFrame :jm_isComplete jm_isComplete :jm_setSequence jm_setSequence :jm_getSequence jm_getSequence :jm_getSize jm_getSize :jm_getFrame jm_getFrame :jm_setFrame jm_setFrame :jm_setLastFrame jm_setLastFrame :jm_reset jm_reset :jm_previousFrame jm_previousFrame :jm_paintFrameXY jm_paintFrameXY :jm_paintXY jm_paintXY} SpecialAnimation/jproto))


