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
(import ../../../../org/allbinary/animation/IndexedAnimation :as IndexedAnimation)
(defn- Anchor/jstatic_TOP_LEFT [& args] (JR/call jfile "../../../../org/allbinary/graphics/Anchor" "jstatic_TOP_LEFT" args))
(defn- PrimitiveIntUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/PrimitiveIntUtil" "jm_getArrayInstance" args))

# Java class ImageAnimation
(var jproto nil)
(var jnew_2 nil)
(var jm_getAnimationSize nil)
(var jm_nextFrame nil)
(var jm_previousFrame nil)
(var jm_setFrame nil)
(var jm_getFrame nil)
(var jm_getSize nil)
(var jm_setSequence nil)
(var jm_getSequence nil)
(var jm_paintXY nil)
(var jm_getImage nil)
(var jm_close nil)
(var jm_finalize nil)

    
(set jnew_2 (fn jnew_2 [_image _animationBehavior]
    (var this (table/setproto @{:jclass "ImageAnimation" :f_image nil :f_anchor 0} jproto))
    
    (put this :f_anchor (Anchor/jstatic_TOP_LEFT))
        (JR/superInit this (IndexedAnimation/jnew_1 _animationBehavior))
        (set (this :f_image) _image)
    this))
    
(set jm_getAnimationSize (fn jm_getAnimationSize [this]
    (label jreturn
        (return jreturn (:jm_getSize this)))))
    
(set jm_nextFrame (fn jm_nextFrame [this]
    nil))
    
(set jm_previousFrame (fn jm_previousFrame [this]
    nil))
    
(set jm_setFrame (fn jm_setFrame [this _index]
    nil))
    
(set jm_getFrame (fn jm_getFrame [this]
    (label jreturn
        (return jreturn 0))))
    
(set jm_getSize (fn jm_getSize [this]
    (label jreturn
        (return jreturn 1))))
    
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
    
(set jm_close (fn jm_close [this]
        (:jm_disposeImage (DisposalUtil/jm_getInstance) (this :f_image))))
    
(set jm_finalize (fn jm_finalize [this]
        (:jm_disposeImage (DisposalUtil/jm_getInstance) (this :f_image))))

(set jproto (table/setproto @{:jm_getAnimationSize jm_getAnimationSize :jm_nextFrame jm_nextFrame :jm_previousFrame jm_previousFrame :jm_setFrame jm_setFrame :jm_getFrame jm_getFrame :jm_getSize jm_getSize :jm_setSequence jm_setSequence :jm_getSequence jm_getSequence :jm_paintXY jm_paintXY :jm_getImage jm_getImage :jm_close jm_close :jm_finalize jm_finalize} IndexedAnimation/jproto))


