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
(defn- NullImage/jstatic_NULL_IMAGE_ARRAY [& args] (JR/call jfile "../../../../javax/microedition/lcdui/NullImage" "jstatic_NULL_IMAGE_ARRAY" args))
(import ../../../../org/allbinary/animation/IndexedAnimation :as IndexedAnimation)
(defn- Anchor/jstatic_TOP_LEFT [& args] (JR/call jfile "../../../../org/allbinary/graphics/Anchor" "jstatic_TOP_LEFT" args))
(defn- PrimitiveIntUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/PrimitiveIntUtil" "jm_getArrayInstance" args))
(defn- CircularIndexUtil/jm_createInstance [& args] (JR/call jfile "../../../../org/allbinary/util/CircularIndexUtil" "jm_createInstance" args))
(defn- CircularIndexUtil/jstatic_NULL_CIRCULAR_INDEX_UTIL [& args] (JR/call jfile "../../../../org/allbinary/util/CircularIndexUtil" "jstatic_NULL_CIRCULAR_INDEX_UTIL" args))

# Java class ImageArrayAnimation
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
(var jm_getImage nil)
(var jm_getImageArray nil)
(var jm_setImageArray nil)
(var jm_paintXY nil)

    
(set jnew_2 (fn jnew_2 [_imageArray _animationBehavior]
    (var this (table/setproto @{:jclass "ImageArrayAnimation" :f_imageArray nil :f_totalFrames 0 :f_circularIndexUtil nil :f_anchor 0} jproto))
    (put this :f_imageArray (NullImage/jstatic_NULL_IMAGE_ARRAY))
    
    (put this :f_circularIndexUtil (CircularIndexUtil/jstatic_NULL_CIRCULAR_INDEX_UTIL))
    (put this :f_anchor (Anchor/jstatic_TOP_LEFT))
        (JR/superInit this (IndexedAnimation/jnew_1 _animationBehavior))
        (:jm_setImageArray this _imageArray)
    this))
    
(set jm_getAnimationSize (fn jm_getAnimationSize [this]
    (label jreturn
        (return jreturn (:jm_getSize this)))))
    
(set jm_nextFrame (fn jm_nextFrame [this]
        (:jm_next (this :f_circularIndexUtil))))
    
(set jm_previousFrame (fn jm_previousFrame [this]
        (:jm_previous (this :f_circularIndexUtil))))
    
(set jm_setFrame (fn jm_setFrame [this _index]
        (:jm_setIndex (this :f_circularIndexUtil) _index)))
    
(set jm_getFrame (fn jm_getFrame [this]
    (label jreturn
        (return jreturn (:jm_getIndex (this :f_circularIndexUtil))))))
    
(set jm_getSize (fn jm_getSize [this]
    (label jreturn
        (return jreturn (this :f_totalFrames)))))
    
(set jm_setSequence (fn jm_setSequence [this _sequence]
    nil))
    
(set jm_getSequence (fn jm_getSequence [this]
    (label jreturn
        (return jreturn (PrimitiveIntUtil/jm_getArrayInstance)))))
    
(set jm_getImage (fn jm_getImage [this _index]
    (label jreturn
        (return jreturn ((this :f_imageArray) _index)))))
    
(set jm_getImageArray (fn jm_getImageArray [this]
    (label jreturn
        (return jreturn (this :f_imageArray)))))
    
(set jm_setImageArray (fn jm_setImageArray [this _imageArray]
        (set (this :f_imageArray) _imageArray)
        (set (this :f_totalFrames) (length _imageArray))
        (set (this :f_circularIndexUtil) (CircularIndexUtil/jm_createInstance (this :f_totalFrames)))))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (:jm_drawImage _graphics ((this :f_imageArray) (:jm_getIndex (this :f_circularIndexUtil))) _x _y (this :f_anchor))))

(set jproto (table/setproto @{:jm_getAnimationSize jm_getAnimationSize :jm_nextFrame jm_nextFrame :jm_previousFrame jm_previousFrame :jm_setFrame jm_setFrame :jm_getFrame jm_getFrame :jm_getSize jm_getSize :jm_setSequence jm_setSequence :jm_getSequence jm_getSequence :jm_getImage jm_getImage :jm_getImageArray jm_getImageArray :jm_setImageArray jm_setImageArray :jm_paintXY jm_paintXY} IndexedAnimation/jproto))


