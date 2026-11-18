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
(defn- AnimationBehaviorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/animation/AnimationBehaviorFactory" "jm_getInstance" args))
(defn- CaptionIndexedAnimation/jnew_9 [& args] (JR/call jfile "../../../../../org/allbinary/animation/caption/CaptionIndexedAnimation" "jnew_9" args))
(defn- ImageAnimation/jnew_2 [& args] (JR/call jfile "../../../../../org/allbinary/animation/image/ImageAnimation" "jnew_2" args))
(defn- BasicColorUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorUtil" "jm_getInstance" args))
(defn- AnimationFactoryImageScaleUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/image/AnimationFactoryImageScaleUtil" "jm_getInstance" args))
(defn- AnimationFactorySpriteScaleUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil" "jm_getInstance" args))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- ScaleProperties/jstatic_instance [& args] (JR/call jfile "../../../../../org/allbinary/media/ScaleProperties" "jstatic_instance" args))
(defn- SpriteIndexedAnimation/jnew_4 [& args] (JR/call jfile "./SpriteIndexedAnimation" "jnew_4" args))

# Java class ImageCaptionIndexedAnimationFactory
(var jproto nil)
(var jnew_11 nil)
(var jm_getInstance nil)
(var jm_setInitialScale nil)

    
(set jnew_11 (fn jnew_11 [_captionImage _spriteMovieImage _soundInterface _frameWidth _frameHeight _captionDx _captionDy _dx _dy _time _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "ImageCaptionIndexedAnimationFactory" :f_animationFactoryImageScaleUtil nil :f_animationFactorySpriteScaleUtil nil :f_captionImage nil :f_spriteMovieImage nil :f_frameWidth 0 :f_frameHeight 0 :f_captionDx 0 :f_captionDy 0 :f_dx 0 :f_dy 0 :f_time 0 :f_soundInterface nil :f_scaleProperties nil :f_animationBehaviorFactory nil} jproto))
    (put this :f_animationFactoryImageScaleUtil (AnimationFactoryImageScaleUtil/jm_getInstance))
    (put this :f_animationFactorySpriteScaleUtil (AnimationFactorySpriteScaleUtil/jm_getInstance))
    
    
    
    
    
    
    
    
    
    
    (put this :f_scaleProperties (ScaleProperties/jstatic_instance))
    
        (if (= _animationBehaviorFactory (AnimationBehaviorFactory/jm_getInstance))
            (do
            (ForcedLogUtil/jm_log "Using default AnimationBehaviorFactory with IndexedAnimationFactory" this)))
        (set (this :f_captionImage) _captionImage)
        (set (this :f_spriteMovieImage) _spriteMovieImage)
        (set (this :f_frameWidth) _frameWidth)
        (set (this :f_frameHeight) _frameHeight)
        (set (this :f_captionDx) _captionDx)
        (set (this :f_captionDy) _captionDy)
        (set (this :f_dx) _dx)
        (set (this :f_dy) _dy)
        (set (this :f_time) _time)
        (set (this :f_soundInterface) _soundInterface)
        (set (this :f_animationBehaviorFactory) _animationBehaviorFactory)
    this))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (var _scaledImage (:jm_createImage (this :f_animationFactoryImageScaleUtil) (this :f_captionImage) (:jm_getWidth (this :f_captionImage)) (:jm_getHeight (this :f_captionImage)) ((this :f_scaleProperties) :f_scaleWidth) ((this :f_scaleProperties) :f_scaleHeight)))
        (var _animationInterface (ImageAnimation/jnew_2 _scaledImage (:jm_getOrCreateInstance (this :f_animationBehaviorFactory))))
        (var _sprite (:jm_createImage (this :f_animationFactorySpriteScaleUtil) (this :f_spriteMovieImage) (this :f_frameWidth) (this :f_frameHeight) ((this :f_scaleProperties) :f_scaleWidth) ((this :f_scaleProperties) :f_scaleHeight)))
        (var _movieIndexedAnimationInterface (SpriteIndexedAnimation/jnew_4 _sprite (this :f_spriteMovieImage) ((BasicColorUtil/jm_getInstance) :f_ZERO_ARRAY) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory))))
        (var _player (:jm_getPlayerP (this :f_soundInterface)))
        (if (nil? _player)
            (do
            (error (JR/newException "Exception" "Sound Was not Initialized"))))
        (return jreturn (CaptionIndexedAnimation/jnew_9 _animationInterface _movieIndexedAnimationInterface _player (this :f_captionDx) (this :f_captionDy) (this :f_dx) (this :f_dy) (this :f_time) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))))
    
(set jm_setInitialScale (fn jm_setInitialScale [this _scaleProperties]
        (set (this :f_scaleProperties) _scaleProperties)))

(set jproto @{:jm_getInstance jm_getInstance :jm_setInitialScale jm_setInitialScale})


