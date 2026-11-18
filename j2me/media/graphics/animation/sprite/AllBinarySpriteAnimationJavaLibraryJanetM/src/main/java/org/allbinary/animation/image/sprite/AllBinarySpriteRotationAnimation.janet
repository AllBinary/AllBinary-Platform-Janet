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
# package org.allbinary.animation.image.sprite

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AngleFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/math/AngleFactory" "jm_getInstance" args))
(defn- AngleInfo/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/math/AngleInfo" "jm_getInstance" args))
(import ./HackRotationSpriteIndexedAnimation :as HackRotationSpriteIndexedAnimation)

# Java class AllBinarySpriteRotationAnimation
(var jproto nil)
(var jnew_3 nil)
(var jm_nextRotation nil)
(var jm_previousRotation nil)
(var jm_setFrameByDirection nil)
(var jm_setFrameToAngle nil)
(var jm_setFrame nil)
(var jm_adjustFrameToAngle nil)
(var jm_adjustFrame nil)

    
(set jnew_3 (fn jnew_3 [_sprite _image _animationBehavior]
    (var this (table/setproto @{:jclass "AllBinarySpriteRotationAnimation"} jproto))
        (JR/superInit this (HackRotationSpriteIndexedAnimation/jnew_4 _sprite _image (AngleInfo/jm_getInstance (JR/i16 (JR/idiv ((AngleFactory/jm_getInstance) :f_TOTAL_ANGLE) (:jm_getRawFrameCount _sprite)))) _animationBehavior))
        (JR/className (this :f_angleInfo))
    this))
    
(set jm_nextRotation (fn jm_nextRotation [this]
        (:jm_nextFrame (this :f_sprite))
        (JR/className (this :f_angleInfo))))
    
(set jm_previousRotation (fn jm_previousRotation [this]
        (:jm_prevFrame (this :f_sprite))
        (JR/className (this :f_angleInfo))))
    
(set jm_setFrameByDirection (fn jm_setFrameByDirection [this _direction]
        (var _angle (JR/className (this :f_directionUtil)))
        (:jm_adjustFrameToAngle this _angle)))
    
(set jm_setFrameToAngle (fn jm_setFrameToAngle [this _angle]
        (:jm_adjustFrameToAngle this _angle)))
    
(set jm_setFrame (fn jm_setFrame [this _index]
        (:jm_setFrame (this :f_sprite) _index)
        (JR/className (this :f_angleInfo))))
    
(set jm_adjustFrameToAngle (fn jm_adjustFrameToAngle [this _angle]
        (:jm_adjustFrame this (:jm_getValue _angle))))
    
(set jm_adjustFrame (fn jm_adjustFrame [this _angle]
        (:jm_setFrame this (JR/className (this :f_frameUtil)))))

(set jproto (table/setproto @{:jm_nextRotation jm_nextRotation :jm_previousRotation jm_previousRotation :jm_setFrameByDirection jm_setFrameByDirection :jm_setFrameToAngle jm_setFrameToAngle :jm_setFrame jm_setFrame :jm_adjustFrameToAngle jm_adjustFrameToAngle :jm_adjustFrame jm_adjustFrame} HackRotationSpriteIndexedAnimation/jproto))


