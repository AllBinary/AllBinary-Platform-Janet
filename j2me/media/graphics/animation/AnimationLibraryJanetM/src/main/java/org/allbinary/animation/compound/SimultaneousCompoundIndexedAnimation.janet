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
# package org.allbinary.animation.compound

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/animation/IndexedAnimation :as IndexedAnimation)
(defn- PrimitiveIntUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/PrimitiveIntUtil" "jm_getArrayInstance" args))

# Java class SimultaneousCompoundIndexedAnimation
(var jproto nil)
(var jnew_2 nil)
(var jm_setFrame nil)
(var jm_getFrame nil)
(var jm_getSize nil)
(var jm_previousFrame nil)
(var jm_setSequence nil)
(var jm_getSequence nil)
(var jm_nextFrame nil)
(var jm_paintXY nil)
(var jm_paintThreedXYZ nil)
(var jm_getAnimationInterfaceArray nil)
(var jm_setAnimationInterfaceArray nil)

    
(set jnew_2 (fn jnew_2 [_animationInterfaceArray _animationBehavior]
    (var this (table/setproto @{:jclass "SimultaneousCompoundIndexedAnimation" :f_animationInterfaceArray nil} jproto))
    
        (JR/superInit this (IndexedAnimation/jnew_1 _animationBehavior))
        (set (this :f_animationInterfaceArray) _animationInterfaceArray)
    this))
    
(set jm_setFrame (fn jm_setFrame [this _frameIndex]
        (var _indexedAnimation nil)
        (do
            (var _index (length (this :f_animationInterfaceArray)))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (set _indexedAnimation ((this :f_animationInterfaceArray) _index))
            (:jm_setFrame _indexedAnimation _frameIndex))))))
    
(set jm_getFrame (fn jm_getFrame [this]
    (label jreturn
        (var _indexedAnimation ((this :f_animationInterfaceArray) 0))
        (return jreturn (:jm_getFrame _indexedAnimation)))))
    
(set jm_getSize (fn jm_getSize [this]
    (label jreturn
        (var _indexedAnimation ((this :f_animationInterfaceArray) 0))
        (return jreturn (:jm_getSize _indexedAnimation)))))
    
(set jm_previousFrame (fn jm_previousFrame [this]
        (var _indexedAnimation nil)
        (do
            (var _index (length (this :f_animationInterfaceArray)))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (set _indexedAnimation ((this :f_animationInterfaceArray) _index))
            (:jm_previousFrame _indexedAnimation))))))
    
(set jm_setSequence (fn jm_setSequence [this _sequence]
    nil))
    
(set jm_getSequence (fn jm_getSequence [this]
    (label jreturn
        (return jreturn (PrimitiveIntUtil/jm_getArrayInstance)))))
    
(set jm_nextFrame (fn jm_nextFrame [this]
        (do
            (var _index (length (this :f_animationInterfaceArray)))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (JR/className ((this :f_animationInterfaceArray) _index)))))))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (var _size (length (this :f_animationInterfaceArray)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (JR/className ((this :f_animationInterfaceArray) _index)))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_paintThreedXYZ (fn jm_paintThreedXYZ [this _graphics _x _y _z]
        (var _size (length (this :f_animationInterfaceArray)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (JR/className ((this :f_animationInterfaceArray) _index)))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_getAnimationInterfaceArray (fn jm_getAnimationInterfaceArray [this]
    (label jreturn
        (return jreturn (this :f_animationInterfaceArray)))))
    
(set jm_setAnimationInterfaceArray (fn jm_setAnimationInterfaceArray [this _animationInterfaceArray]
        (set (this :f_animationInterfaceArray) _animationInterfaceArray)))

(set jproto (table/setproto @{:jm_setFrame jm_setFrame :jm_getFrame jm_getFrame :jm_getSize jm_getSize :jm_previousFrame jm_previousFrame :jm_setSequence jm_setSequence :jm_getSequence jm_getSequence :jm_nextFrame jm_nextFrame :jm_paintXY jm_paintXY :jm_paintThreedXYZ jm_paintThreedXYZ :jm_getAnimationInterfaceArray jm_getAnimationInterfaceArray :jm_setAnimationInterfaceArray jm_setAnimationInterfaceArray} IndexedAnimation/jproto))


