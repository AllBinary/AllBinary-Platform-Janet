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
(defn- AngleFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/math/AngleFactory" "jm_getInstance" args))
(defn- AngleInfo/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/math/AngleInfo" "jm_getInstance" args))
(import ./VectorBaseRotationAnimation :as VectorBaseRotationAnimation)

# Java class VectorRotationAnimation
(var jproto nil)
(var jnew_3 nil)
(var jm_setFrameByDirection nil)
(var jm_setFrameToAngle nil)
(var jm_setFrame nil)
(var jm_adjustFrame nil)
(var jm_adjustFrameToAngle nil)

    
(set jnew_3 (fn jnew_3 [_currentPoints _basicColor _animationBehavior]
    (var this (table/setproto @{:jclass "VectorRotationAnimation"} jproto))
        (JR/superInit this (VectorBaseRotationAnimation/jnew_4 (AngleInfo/jm_getInstance (JR/i16 (JR/idiv ((AngleFactory/jm_getInstance) :f_TOTAL_ANGLE) (length _currentPoints)))) _currentPoints _basicColor _animationBehavior))
        (JR/className (this :f_angleInfo))
    this))
    
(set jm_setFrameByDirection (fn jm_setFrameByDirection [this _direction]
        (var _angle (JR/className (this :f_directionUtil)))
        (:jm_adjustFrameToAngle this _angle)))
    
(set jm_setFrameToAngle (fn jm_setFrameToAngle [this _angle]
        (:jm_adjustFrameToAngle this _angle)))
    
(set jm_setFrame (fn jm_setFrame [this _index]
        ((get VectorBaseRotationAnimation/jproto :jm_setFrame) this _index)
        (JR/className (this :f_angleInfo))))
    
(set jm_adjustFrame (fn jm_adjustFrame [this _newAngle]
        (:jm_setFrame this (JR/className (this :f_frameUtil)))))
    
(set jm_adjustFrameToAngle (fn jm_adjustFrameToAngle [this _newAngle]
        (:jm_adjustFrame this (:jm_getValue _newAngle))))

(set jproto (table/setproto @{:jm_setFrameByDirection jm_setFrameByDirection :jm_setFrameToAngle jm_setFrameToAngle :jm_setFrame jm_setFrame :jm_adjustFrame jm_adjustFrame :jm_adjustFrameToAngle jm_adjustFrameToAngle} VectorBaseRotationAnimation/jproto))


