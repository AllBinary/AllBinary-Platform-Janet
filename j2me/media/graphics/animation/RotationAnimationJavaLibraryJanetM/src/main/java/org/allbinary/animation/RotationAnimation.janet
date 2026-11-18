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
(defn- DirectionUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/direction/DirectionUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- FrameUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/math/FrameUtil" "jm_getInstance" args))
(import ./IndexedAnimation :as IndexedAnimation)

# Java class RotationAnimation
(var jproto nil)
(var jnew_3 nil)
(var jm_nextRotationX nil)
(var jm_previousRotationX nil)
(var jm_nextRotation nil)
(var jm_previousRotation nil)
(var jm_nextRotationZ nil)
(var jm_previousRotationZ nil)
(var jm_setFrame nil)
(var jm_setFrameByDirection nil)
(var jm_setFrameToAngle nil)
(var jm_adjustFrameToAngle nil)
(var jm_adjustFrame nil)
(var jm_getFrame nil)
(var jm_getSize nil)
(var jm_getAngleInfoP nil)
(var jm_toString nil)

    
(set jnew_3 (fn jnew_3 [_angleInfo _circularIndexUtil _animationBehavior]
    (var this (table/setproto @{:jclass "RotationAnimation" :f_frameUtil nil :f_directionUtil nil :f_angleInfo nil :f_circularIndexUtil nil} jproto))
    (put this :f_frameUtil (FrameUtil/jm_getInstance))
    (put this :f_directionUtil (DirectionUtil/jm_getInstance))
    
    
        (JR/superInit this (IndexedAnimation/jnew_1 _animationBehavior))
        (set (this :f_angleInfo) _angleInfo)
        (set (this :f_circularIndexUtil) _circularIndexUtil)
    this))
    
(set jm_nextRotationX (fn jm_nextRotationX [this]
    nil))
    
(set jm_previousRotationX (fn jm_previousRotationX [this]
    nil))
    
(set jm_nextRotation (fn jm_nextRotation [this]
        (:jm_adjustAngle (this :f_angleInfo) (:jm_next (this :f_circularIndexUtil)))))
    
(set jm_previousRotation (fn jm_previousRotation [this]
        (:jm_adjustAngle (this :f_angleInfo) (:jm_previous (this :f_circularIndexUtil)))))
    
(set jm_nextRotationZ (fn jm_nextRotationZ [this]
    nil))
    
(set jm_previousRotationZ (fn jm_previousRotationZ [this]
    nil))
    
(set jm_setFrame (fn jm_setFrame [this _index]
        (:jm_setIndex (this :f_circularIndexUtil) _index)
        (var _newFrame (:jm_getIndex (this :f_circularIndexUtil)))
        (:jm_adjustAngle (this :f_angleInfo) _newFrame)))
    
(set jm_setFrameByDirection (fn jm_setFrameByDirection [this _direction]
        (var _angle (:jm_getFrameAngle (this :f_directionUtil) _direction))
        (:jm_adjustFrameToAngle this _angle)))
    
(set jm_setFrameToAngle (fn jm_setFrameToAngle [this _angle]
        (:jm_adjustFrameToAngle this _angle)))
    
(set jm_adjustFrameToAngle (fn jm_adjustFrameToAngle [this _angle]
        (:jm_adjustFrame this (:jm_getValue _angle))))
    
(set jm_adjustFrame (fn jm_adjustFrame [this _angle]
        (:jm_setFrame this (:jm_getFrameForAngle (this :f_frameUtil) _angle (JR/className (:jm_getAngleIncrementInfo (this :f_angleInfo)))))))
    
(set jm_getFrame (fn jm_getFrame [this]
    (label jreturn
        (return jreturn (:jm_getIndex (this :f_circularIndexUtil))))))
    
(set jm_getSize (fn jm_getSize [this]
    (label jreturn
        (return jreturn (:jm_getSize (this :f_circularIndexUtil))))))
    
(set jm_getAngleInfoP (fn jm_getAngleInfoP [this]
    (label jreturn
        (return jreturn (this :f_angleInfo)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (:jm_toString (:jm_append (:jm_append (:jm_append (:jm_append (:jm_append (StringMaker/jnew_0) ((get IndexedAnimation/jproto :jm_toString) this)) "circularIndexUtil: ") (:jm_toString (this :f_circularIndexUtil))) "angleInfo: ") (:jm_toString (this :f_angleInfo))))))))

(set jproto (table/setproto @{:jm_nextRotationX jm_nextRotationX :jm_previousRotationX jm_previousRotationX :jm_nextRotation jm_nextRotation :jm_previousRotation jm_previousRotation :jm_nextRotationZ jm_nextRotationZ :jm_previousRotationZ jm_previousRotationZ :jm_setFrame jm_setFrame :jm_setFrameByDirection jm_setFrameByDirection :jm_setFrameToAngle jm_setFrameToAngle :jm_adjustFrameToAngle jm_adjustFrameToAngle :jm_adjustFrame jm_adjustFrame :jm_getFrame jm_getFrame :jm_getSize jm_getSize :jm_getAngleInfoP jm_getAngleInfoP :jm_toString jm_toString} IndexedAnimation/jproto))


