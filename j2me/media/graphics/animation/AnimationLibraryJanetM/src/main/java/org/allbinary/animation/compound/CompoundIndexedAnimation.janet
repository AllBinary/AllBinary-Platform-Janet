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
(defn- CircularIndexUtil/jm_createInstance [& args] (JR/call jfile "../../../../org/allbinary/util/CircularIndexUtil" "jm_createInstance" args))

# Java class CompoundIndexedAnimation
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
(var jm_getCurrentAnimation nil)
(var jm_nextAnimation nil)
(var jm_previousAnimation nil)
(var jm_setAnimation nil)
(var jm_getAnimationInterfaceArray nil)
(var jm_setAnimationInterfaceArray nil)
(var jm_set nil)

    
(set jnew_2 (fn jnew_2 [_animationInterfaceArray _animationBehavior]
    (var this (table/setproto @{:jclass "CompoundIndexedAnimation" :f_circularIndexUtil nil :f_animationInterfaceArray nil} jproto))
    
    
        (JR/superInit this (IndexedAnimation/jnew_1 _animationBehavior))
        (set (this :f_animationInterfaceArray) _animationInterfaceArray)
        (set (this :f_circularIndexUtil) (CircularIndexUtil/jm_createInstance (length (this :f_animationInterfaceArray))))
    this))
    
(set jm_setFrame (fn jm_setFrame [this _index]
        (var _indexedAnimation ((this :f_animationInterfaceArray) (:jm_getIndex (this :f_circularIndexUtil))))
        (:jm_setFrame _indexedAnimation _index)))
    
(set jm_getFrame (fn jm_getFrame [this]
    (label jreturn
        (var _indexedAnimation ((this :f_animationInterfaceArray) (:jm_getIndex (this :f_circularIndexUtil))))
        (return jreturn (:jm_getFrame _indexedAnimation)))))
    
(set jm_getSize (fn jm_getSize [this]
    (label jreturn
        (var _indexedAnimation ((this :f_animationInterfaceArray) (:jm_getIndex (this :f_circularIndexUtil))))
        (return jreturn (:jm_getSize _indexedAnimation)))))
    
(set jm_previousFrame (fn jm_previousFrame [this]
        (var _indexedAnimation ((this :f_animationInterfaceArray) (:jm_getIndex (this :f_circularIndexUtil))))
        (:jm_previousFrame _indexedAnimation)))
    
(set jm_setSequence (fn jm_setSequence [this _sequence]
    nil))
    
(set jm_getSequence (fn jm_getSequence [this]
    (label jreturn
        (return jreturn (PrimitiveIntUtil/jm_getArrayInstance)))))
    
(set jm_nextFrame (fn jm_nextFrame [this]
        (JR/className ((this :f_animationInterfaceArray) (:jm_getIndex (this :f_circularIndexUtil))))))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (JR/className ((this :f_animationInterfaceArray) (:jm_getIndex (this :f_circularIndexUtil))))))
    
(set jm_paintThreedXYZ (fn jm_paintThreedXYZ [this _graphics _x _y _z]
        (JR/className ((this :f_animationInterfaceArray) (:jm_getIndex (this :f_circularIndexUtil))))))
    
(set jm_getCurrentAnimation (fn jm_getCurrentAnimation [this]
    (label jreturn
        (return jreturn ((this :f_animationInterfaceArray) (:jm_getIndex (this :f_circularIndexUtil)))))))
    
(set jm_nextAnimation (fn jm_nextAnimation [this]
        (var _frame (:jm_getFrame this))
        (:jm_next (this :f_circularIndexUtil))
        (:jm_setFrame this _frame)))
    
(set jm_previousAnimation (fn jm_previousAnimation [this]
        (var _frame (:jm_getFrame this))
        (:jm_previous (this :f_circularIndexUtil))
        (:jm_setFrame this _frame)))
    
(set jm_setAnimation (fn jm_setAnimation [this _index]
        (var _frame (:jm_getFrame this))
        (:jm_setIndex (this :f_circularIndexUtil) _index)
        (:jm_setFrame this _frame)))
    
(set jm_getAnimationInterfaceArray (fn jm_getAnimationInterfaceArray [this]
    (label jreturn
        (return jreturn (this :f_animationInterfaceArray)))))
    
(set jm_setAnimationInterfaceArray (fn jm_setAnimationInterfaceArray [this _animationInterfaceArray]
        (set (this :f_animationInterfaceArray) _animationInterfaceArray)))
    
(set jm_set (fn jm_set [this _gl]
        (do
            (var _index (length (this :f_animationInterfaceArray)))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (JR/className ((this :f_animationInterfaceArray) _index)))))))

(set jproto (table/setproto @{:jm_setFrame jm_setFrame :jm_getFrame jm_getFrame :jm_getSize jm_getSize :jm_previousFrame jm_previousFrame :jm_setSequence jm_setSequence :jm_getSequence jm_getSequence :jm_nextFrame jm_nextFrame :jm_paintXY jm_paintXY :jm_paintThreedXYZ jm_paintThreedXYZ :jm_getCurrentAnimation jm_getCurrentAnimation :jm_nextAnimation jm_nextAnimation :jm_previousAnimation jm_previousAnimation :jm_setAnimation jm_setAnimation :jm_getAnimationInterfaceArray jm_getAnimationInterfaceArray :jm_setAnimationInterfaceArray jm_setAnimationInterfaceArray :jm_set jm_set} IndexedAnimation/jproto))


