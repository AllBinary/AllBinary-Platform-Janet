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
(import ../../../../../org/allbinary/animation/RotationAnimation :as RotationAnimation)
(defn- PrimitiveIntUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/math/PrimitiveIntUtil" "jm_getArrayInstance" args))
(defn- CircularIndexUtil/jm_createInstance [& args] (JR/call jfile "../../../../../org/allbinary/util/CircularIndexUtil" "jm_createInstance" args))

# Java class HackRotationSpriteIndexedAnimation
(var jproto nil)
(var jnew_4 nil)
(var jm_getAnimationSize nil)
(var jm_paintFrame nil)
(var jm_paintXY nil)
(var jm_paint nil)
(var jm_nextRotation nil)
(var jm_previousRotation nil)
(var jm_getSize nil)
(var jm_setFrame nil)
(var jm_getFrame nil)
(var jm_setSequence nil)
(var jm_getSequence nil)

    
(set jnew_4 (fn jnew_4 [_sprite _image _angleInfo _animationBehavior]
    (var this (table/setproto @{:jclass "HackRotationSpriteIndexedAnimation" :f_sprite nil :f_image nil} jproto))
    
    
        (JR/superInit this (RotationAnimation/jnew_3 _angleInfo (CircularIndexUtil/jm_createInstance (JR/idiv 360 (JR/className (:jm_getAngleIncrementInfo _angleInfo)))) _animationBehavior))
        (set (this :f_sprite) _sprite)
        (set (this :f_image) _image)
    this))
    
(set jm_getAnimationSize (fn jm_getAnimationSize [this]
    (label jreturn
        (return jreturn (:jm_getSize this)))))
    
(set jm_paintFrame (fn jm_paintFrame [this _g _frame _x _y]
        (:jm_setFrame this _frame)
        (:jm_paintXY this _g _x _y)))
    
(set jm_paintXY (fn jm_paintXY [this _g _x _y]
        (:jm_setPosition (this :f_sprite) _x _y)
        (:jm_paint this _g)))
    
(set jm_paint (fn jm_paint [this _g]
        (:jm_paint (this :f_sprite) _g)))
    
(set jm_nextRotation (fn jm_nextRotation [this]
        (:jm_nextFrame (this :f_sprite))))
    
(set jm_previousRotation (fn jm_previousRotation [this]
        (:jm_prevFrame (this :f_sprite))))
    
(set jm_getSize (fn jm_getSize [this]
    (label jreturn
        (return jreturn (:jm_getRawFrameCount (this :f_sprite))))))
    
(set jm_setFrame (fn jm_setFrame [this _frame]
        (:jm_setFrame (this :f_sprite) _frame)))
    
(set jm_getFrame (fn jm_getFrame [this]
    (label jreturn
        (return jreturn (:jm_getFrame (this :f_sprite))))))
    
(set jm_setSequence (fn jm_setSequence [this _sequence]
    nil))
    
(set jm_getSequence (fn jm_getSequence [this]
    (label jreturn
        (return jreturn (PrimitiveIntUtil/jm_getArrayInstance)))))

(set jproto (table/setproto @{:jm_getAnimationSize jm_getAnimationSize :jm_paintFrame jm_paintFrame :jm_paintXY jm_paintXY :jm_paint jm_paint :jm_nextRotation jm_nextRotation :jm_previousRotation jm_previousRotation :jm_getSize jm_getSize :jm_setFrame jm_setFrame :jm_getFrame jm_getFrame :jm_setSequence jm_setSequence :jm_getSequence jm_getSequence} RotationAnimation/jproto))


