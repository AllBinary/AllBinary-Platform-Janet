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
(import ../../../../org/allbinary/animation/RotationAnimation :as RotationAnimation)
(defn- PrimitiveIntUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/PrimitiveIntUtil" "jm_getArrayInstance" args))
(defn- AngleFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/math/AngleFactory" "jm_getInstance" args))
(defn- AngleInfo/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/math/AngleInfo" "jm_getInstance" args))
(defn- CircularIndexUtil/jm_createInstance [& args] (JR/call jfile "../../../../org/allbinary/util/CircularIndexUtil" "jm_createInstance" args))

# Java class CompoundRotationAnimation
(var jproto nil)
(var jnew_2 nil)
(var jm_setFrame nil)
(var jm_getFrame nil)
(var jm_getAnimationSize nil)
(var jm_getSize nil)
(var jm_previousFrame nil)
(var jm_nextFrame nil)
(var jm_previousRotation nil)
(var jm_nextRotation nil)
(var jm_setSequence nil)
(var jm_getSequence nil)
(var jm_paintXY nil)
(var jm_paintThreedXYZ nil)
(var jm_getCurrentAnimation nil)
(var jm_nextAnimation nil)
(var jm_previousAnimation nil)
(var jm_setAnimation nil)
(var jm_setFrameByDirection nil)
(var jm_setFrameToAngle nil)
(var jm_adjustFrameToAngle nil)
(var jm_adjustFrame nil)
(var jm_getAngleInfoP nil)
(var jm_getAnimationInterfaceArray nil)
(var jm_setAnimationInterfaceArray nil)
(var jm_set nil)

    
(set jnew_2 (fn jnew_2 [_animationInterfaceArray _animationBehavior]
    (var this (table/setproto @{:jclass "CompoundRotationAnimation" :f_animationInterfaceArray nil} jproto))
    
        (JR/superInit this (RotationAnimation/jnew_3 (AngleInfo/jm_getInstance ((AngleFactory/jm_getInstance) :f_QUARTER_TOTAL_ANGLE)) (CircularIndexUtil/jm_createInstance 4) _animationBehavior))
        (set (this :f_animationInterfaceArray) _animationInterfaceArray)
        (set (this :f_circularIndexUtil) (CircularIndexUtil/jm_createInstance (length (this :f_animationInterfaceArray))))
    this))
    
(set jm_setFrame (fn jm_setFrame [this _index]
        (JR/className ((this :f_animationInterfaceArray) (JR/className (this :f_circularIndexUtil))))))
    
(set jm_getFrame (fn jm_getFrame [this]
    (label jreturn
        (return jreturn (JR/className ((this :f_animationInterfaceArray) (JR/className (this :f_circularIndexUtil))))))))
    
(set jm_getAnimationSize (fn jm_getAnimationSize [this]
    (label jreturn
        (return jreturn (JR/className ((this :f_animationInterfaceArray) (JR/className (this :f_circularIndexUtil))))))))
    
(set jm_getSize (fn jm_getSize [this]
    (label jreturn
        (return jreturn (JR/className ((this :f_animationInterfaceArray) (JR/className (this :f_circularIndexUtil))))))))
    
(set jm_previousFrame (fn jm_previousFrame [this]
        (JR/className ((this :f_animationInterfaceArray) (JR/className (this :f_circularIndexUtil))))))
    
(set jm_nextFrame (fn jm_nextFrame [this]
        (JR/className ((this :f_animationInterfaceArray) (JR/className (this :f_circularIndexUtil))))))
    
(set jm_previousRotation (fn jm_previousRotation [this]
        (JR/className ((this :f_animationInterfaceArray) (JR/className (this :f_circularIndexUtil))))))
    
(set jm_nextRotation (fn jm_nextRotation [this]
        (JR/className ((this :f_animationInterfaceArray) (JR/className (this :f_circularIndexUtil))))))
    
(set jm_setSequence (fn jm_setSequence [this _sequence]
    nil))
    
(set jm_getSequence (fn jm_getSequence [this]
    (label jreturn
        (return jreturn (PrimitiveIntUtil/jm_getArrayInstance)))))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (JR/className ((this :f_animationInterfaceArray) (JR/className (this :f_circularIndexUtil))))))
    
(set jm_paintThreedXYZ (fn jm_paintThreedXYZ [this _graphics _x _y _z]
        (JR/className ((this :f_animationInterfaceArray) (JR/className (this :f_circularIndexUtil))))))
    
(set jm_getCurrentAnimation (fn jm_getCurrentAnimation [this]
    (label jreturn
        (return jreturn ((this :f_animationInterfaceArray) (JR/className (this :f_circularIndexUtil)))))))
    
(set jm_nextAnimation (fn jm_nextAnimation [this]
        (var _frame (:jm_getFrame this))
        (JR/className (this :f_circularIndexUtil))
        (:jm_setFrame this _frame)))
    
(set jm_previousAnimation (fn jm_previousAnimation [this]
        (var _frame (:jm_getFrame this))
        (JR/className (this :f_circularIndexUtil))
        (:jm_setFrame this _frame)))
    
(set jm_setAnimation (fn jm_setAnimation [this _index]
        (var _frame (:jm_getFrame this))
        (JR/className (this :f_circularIndexUtil))
        (:jm_setFrame this _frame)))
    
(set jm_setFrameByDirection (fn jm_setFrameByDirection [this _direction]
        (JR/className ((this :f_animationInterfaceArray) (JR/className (this :f_circularIndexUtil))))))
    
(set jm_setFrameToAngle (fn jm_setFrameToAngle [this _angle]
        (JR/className ((this :f_animationInterfaceArray) (JR/className (this :f_circularIndexUtil))))))
    
(set jm_adjustFrameToAngle (fn jm_adjustFrameToAngle [this _newAngle]
        (:jm_adjustFrame this (:jm_getValue _newAngle))))
    
(set jm_adjustFrame (fn jm_adjustFrame [this _angle]
        (JR/className ((this :f_animationInterfaceArray) (JR/className (this :f_circularIndexUtil))))))
    
(set jm_getAngleInfoP (fn jm_getAngleInfoP [this]
    (label jreturn
        (return jreturn (JR/className ((this :f_animationInterfaceArray) (JR/className (this :f_circularIndexUtil))))))))
    
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

(set jproto (table/setproto @{:jm_setFrame jm_setFrame :jm_getFrame jm_getFrame :jm_getAnimationSize jm_getAnimationSize :jm_getSize jm_getSize :jm_previousFrame jm_previousFrame :jm_nextFrame jm_nextFrame :jm_previousRotation jm_previousRotation :jm_nextRotation jm_nextRotation :jm_setSequence jm_setSequence :jm_getSequence jm_getSequence :jm_paintXY jm_paintXY :jm_paintThreedXYZ jm_paintThreedXYZ :jm_getCurrentAnimation jm_getCurrentAnimation :jm_nextAnimation jm_nextAnimation :jm_previousAnimation jm_previousAnimation :jm_setAnimation jm_setAnimation :jm_setFrameByDirection jm_setFrameByDirection :jm_setFrameToAngle jm_setFrameToAngle :jm_adjustFrameToAngle jm_adjustFrameToAngle :jm_adjustFrame jm_adjustFrame :jm_getAngleInfoP jm_getAngleInfoP :jm_getAnimationInterfaceArray jm_getAnimationInterfaceArray :jm_setAnimationInterfaceArray jm_setAnimationInterfaceArray :jm_set jm_set} RotationAnimation/jproto))


