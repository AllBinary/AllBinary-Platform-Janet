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
(defn- DisposalUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/DisposalUtil" "jm_getInstance" args))
(import ../../../../org/allbinary/animation/RotationAnimation :as RotationAnimation)
(defn- Anchor/jstatic_TOP_LEFT [& args] (JR/call jfile "../../../../org/allbinary/graphics/Anchor" "jstatic_TOP_LEFT" args))
(defn- PrimitiveIntUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/PrimitiveIntUtil" "jm_getArrayInstance" args))
(defn- ImageModifierUtil/jm_getInstanceOrCreate [& args] (JR/call jfile "../../../../org/allbinary/media/image/ImageModifierUtil" "jm_getInstanceOrCreate" args))
(defn- CircularIndexUtil/jm_createInstance [& args] (JR/call jfile "../../../../org/allbinary/util/CircularIndexUtil" "jm_createInstance" args))

# Java class ImageArrayBaseRotationAnimation
(var jproto nil)
(var jnew_3 nil)
(var jm_getAnimationSize nil)
(var jm_setAlpha nil)
(var jm_nextRotation nil)
(var jm_previousRotation nil)
(var jm_setFrame nil)
(var jm_setSequence nil)
(var jm_getSequence nil)
(var jm_setImageArray nil)
(var jm_paintXY nil)
(var jm_close nil)
(var jm_finalize nil)

    
(set jnew_3 (fn jnew_3 [_originalImageArray _angleInfo _animationBehavior]
    (var this (table/setproto @{:jclass "ImageArrayBaseRotationAnimation" :f_imageModifierUtil nil :f_originalImageArray nil :f_imageArray nil :f_currentImage nil :f_totalFrames 0 :f_anchor 0} jproto))
    (put this :f_imageModifierUtil (ImageModifierUtil/jm_getInstanceOrCreate))
    
    (put this :f_imageArray (NullImage/jstatic_NULL_IMAGE_ARRAY))
    
    
    (put this :f_anchor (Anchor/jstatic_TOP_LEFT))
        (JR/superInit this (RotationAnimation/jnew_3 _angleInfo (CircularIndexUtil/jm_createInstance (JR/idiv 360 (JR/className (:jm_getAngleIncrementInfo _angleInfo)))) _animationBehavior))
        (set (this :f_originalImageArray) _originalImageArray)
        (:jm_setImageArray this (:jm_getImageArray (this :f_imageModifierUtil) _originalImageArray))
        (set (this :f_currentImage) ((this :f_imageArray) (JR/className (this :f_circularIndexUtil))))
    this))
    
(set jm_getAnimationSize (fn jm_getAnimationSize [this]
    (label jreturn
        (return jreturn (:jm_getSize this)))))
    
(set jm_setAlpha (fn jm_setAlpha [this _alpha]
        (if (not= (this :f_alphaP) _alpha)
            (do
            ((get RotationAnimation/jproto :jm_setAlpha) this _alpha)
            (:jm_reset (this :f_imageModifierUtil))
            (var _index (JR/className (this :f_circularIndexUtil)))
            (:jm_setAlpha (this :f_imageModifierUtil) ((this :f_originalImageArray) _index) ((this :f_imageArray) _index) _index (this :f_alphaP))))))
    
(set jm_nextRotation (fn jm_nextRotation [this]
        ((get RotationAnimation/jproto :jm_nextRotation) this)
        (var _index (JR/className (this :f_circularIndexUtil)))
        (:jm_setAlpha (this :f_imageModifierUtil) ((this :f_originalImageArray) _index) ((this :f_imageArray) _index) _index (this :f_alphaP))
        (set (this :f_currentImage) ((this :f_imageArray) _index))))
    
(set jm_previousRotation (fn jm_previousRotation [this]
        ((get RotationAnimation/jproto :jm_previousRotation) this)
        (var _index (JR/className (this :f_circularIndexUtil)))
        (:jm_setAlpha (this :f_imageModifierUtil) ((this :f_originalImageArray) _index) ((this :f_imageArray) _index) _index (this :f_alphaP))
        (set (this :f_currentImage) ((this :f_imageArray) _index))))
    
(set jm_setFrame (fn jm_setFrame [this _index2]
        ((get RotationAnimation/jproto :jm_setFrame) this _index2)
        (var _index (JR/className (this :f_circularIndexUtil)))
        (:jm_setAlpha (this :f_imageModifierUtil) ((this :f_originalImageArray) _index) ((this :f_imageArray) _index) _index (this :f_alphaP))
        (set (this :f_currentImage) ((this :f_imageArray) _index))))
    
(set jm_setSequence (fn jm_setSequence [this _sequence]
    nil))
    
(set jm_getSequence (fn jm_getSequence [this]
    (label jreturn
        (return jreturn (PrimitiveIntUtil/jm_getArrayInstance)))))
    
(set jm_setImageArray (fn jm_setImageArray [this _imageArray]
        (set (this :f_imageArray) _imageArray)
        (set (this :f_totalFrames) (length _imageArray))
        (set (this :f_circularIndexUtil) (CircularIndexUtil/jm_createInstance (this :f_totalFrames)))))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (:jm_drawImage _graphics (this :f_currentImage) _x _y (this :f_anchor))))
    
(set jm_close (fn jm_close [this]
        (var _disposalUtil (DisposalUtil/jm_getInstance))
        (var _size2 (length (this :f_imageArray)))
        (do
            (var _index 0)
            (while (< _index _size2)
                (do
            (:jm_disposeImage _disposalUtil ((this :f_imageArray) _index)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (var _size (length (this :f_originalImageArray)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (:jm_disposeImage _disposalUtil ((this :f_originalImageArray) _index)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (:jm_disposeImage _disposalUtil (this :f_currentImage))))
    
(set jm_finalize (fn jm_finalize [this]
        (var _disposalUtil (DisposalUtil/jm_getInstance))
        (var _size2 (length (this :f_imageArray)))
        (do
            (var _index 0)
            (while (< _index _size2)
                (do
            (:jm_disposeImage _disposalUtil ((this :f_imageArray) _index)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (var _size (length (this :f_originalImageArray)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (:jm_disposeImage _disposalUtil ((this :f_originalImageArray) _index)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (:jm_disposeImage _disposalUtil (this :f_currentImage))))

(set jproto (table/setproto @{:jm_getAnimationSize jm_getAnimationSize :jm_setAlpha jm_setAlpha :jm_nextRotation jm_nextRotation :jm_previousRotation jm_previousRotation :jm_setFrame jm_setFrame :jm_setSequence jm_setSequence :jm_getSequence jm_getSequence :jm_setImageArray jm_setImageArray :jm_paintXY jm_paintXY :jm_close jm_close :jm_finalize jm_finalize} RotationAnimation/jproto))


