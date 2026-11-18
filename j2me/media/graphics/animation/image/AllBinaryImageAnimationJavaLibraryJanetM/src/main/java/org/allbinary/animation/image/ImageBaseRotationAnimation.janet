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
# package org.allbinary.animation.image

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- DisposalUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/DisposalUtil" "jm_getInstance" args))
(import ../../../../org/allbinary/animation/RotationAnimation :as RotationAnimation)
(defn- Anchor/jstatic_TOP_LEFT [& args] (JR/call jfile "../../../../org/allbinary/graphics/Anchor" "jstatic_TOP_LEFT" args))
(defn- PrimitiveIntUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/PrimitiveIntUtil" "jm_getArrayInstance" args))
(defn- CircularIndexUtil/jm_createInstance [& args] (JR/call jfile "../../../../org/allbinary/util/CircularIndexUtil" "jm_createInstance" args))

# Java class ImageBaseRotationAnimation
(var jproto nil)
(var jnew_4 nil)
(var jm_getAnimationSize nil)
(var jm_setSequence nil)
(var jm_getSequence nil)
(var jm_paintXY nil)
(var jm_getImage nil)
(var jm_getWidth nil)
(var jm_getHeight nil)
(var jm_close nil)
(var jm_finalize nil)

    
(set jnew_4 (fn jnew_4 [_image _angleInfo _totalAngle _animationBehavior]
    (var this (table/setproto @{:jclass "ImageBaseRotationAnimation" :f_image nil :f_anchor 0} jproto))
    
    (put this :f_anchor (Anchor/jstatic_TOP_LEFT))
        (JR/superInit this (RotationAnimation/jnew_3 _angleInfo (CircularIndexUtil/jm_createInstance (JR/idiv _totalAngle (JR/className (:jm_getAngleIncrementInfo _angleInfo)))) _animationBehavior))
        (set (this :f_image) _image)
    this))
    
(set jm_getAnimationSize (fn jm_getAnimationSize [this]
    (label jreturn
        (return jreturn (:jm_getSize this)))))
    
(set jm_setSequence (fn jm_setSequence [this _sequence]
    nil))
    
(set jm_getSequence (fn jm_getSequence [this]
    (label jreturn
        (return jreturn (PrimitiveIntUtil/jm_getArrayInstance)))))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (:jm_drawImage _graphics (this :f_image) _x _y (this :f_anchor))))
    
(set jm_getImage (fn jm_getImage [this]
    (label jreturn
        (return jreturn (this :f_image)))))
    
(set jm_getWidth (fn jm_getWidth [this]
    (label jreturn
        (return jreturn (:jm_getWidth (this :f_image))))))
    
(set jm_getHeight (fn jm_getHeight [this]
    (label jreturn
        (return jreturn (:jm_getHeight (this :f_image))))))
    
(set jm_close (fn jm_close [this]
        (:jm_disposeImage (DisposalUtil/jm_getInstance) (this :f_image))))
    
(set jm_finalize (fn jm_finalize [this]
        (:jm_disposeImage (DisposalUtil/jm_getInstance) (this :f_image))))

(set jproto (table/setproto @{:jm_getAnimationSize jm_getAnimationSize :jm_setSequence jm_setSequence :jm_getSequence jm_getSequence :jm_paintXY jm_paintXY :jm_getImage jm_getImage :jm_getWidth jm_getWidth :jm_getHeight jm_getHeight :jm_close jm_close :jm_finalize jm_finalize} RotationAnimation/jproto))


