# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.image.sprite

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- SpriteFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/layer/SpriteFactory" "jm_getInstance" args))
(defn- OpenGLUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/opengles/OpenGLUtil" "jm_getInstance" args))
(defn- ImageCacheFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/image/ImageCacheFactory" "jm_getInstance" args))
(defn- OpenGLESImageExclusionUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/image/opengles/OpenGLESImageExclusionUtil" "jm_getInstance" args))
(defn- J2SEMath/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/J2SEMath" "jm_getInstance" args))
(defn- ImageScaleUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/media/image/ImageScaleUtil" "jm_getInstance" args))

# Java class AnimationFactorySpriteScaleUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_createImage nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AnimationFactorySpriteScaleUtil" :f_imageCache nil :f_imageScaleUtil nil :f_openGLUtil nil :f_j2seMath nil :f_openGLESImageExclusionUtil nil} jproto))
    (put this :f_imageCache (ImageCacheFactory/jm_getInstance))
    (put this :f_imageScaleUtil (ImageScaleUtil/jm_getInstance))
    (put this :f_openGLUtil (OpenGLUtil/jm_getInstance))
    (put this :f_j2seMath (J2SEMath/jm_getInstance))
    (put this :f_openGLESImageExclusionUtil (OpenGLESImageExclusionUtil/jm_getInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_createImage (fn jm_createImage [this _image _width _height _scaleWidth _scaleHeight]
    (label jreturn
        (var _spriteFactory (SpriteFactory/jm_getInstance))
        (var _sprite nil)
        (var _scaledImage nil)
        (if (and (not= _scaleWidth 0) (not= _scaleHeight 0))
            (do
            (var _scaleX (/ _scaleWidth _width))
            (var _scaleY (/ _scaleHeight _height))
            (if (or (and (= _scaleX 1.0) (= _scaleY 1.0)) (or (= _scaleX 0.0) (= _scaleY 0.0)))
                (do
                (set _scaledImage (:jm_addImage (this :f_openGLUtil) _image))
                (set _sprite (:jm_createSprite _spriteFactory _scaledImage _width _height)))
                (do
                (if (:jm_isCustomScaling (this :f_openGLESImageExclusionUtil) _image)
                    (do
                    (var _width2 (:jm_round (this :f_j2seMath) (- _scaleWidth 0.5)))
                    (var _height2 (:jm_round (this :f_j2seMath) (- _scaleHeight 0.5)))
                    (var _multiplesOf16Width (JR/idiv _width2 16))
                    (var _by16Width (JR/i32 (* _multiplesOf16Width 16)))
                    (set _scaleX (/ _by16Width _width))
                    (var _multiplesOf16Height (JR/idiv _height2 16))
                    (var _by16Height (JR/i32 (* _multiplesOf16Height 16)))
                    (set _scaleY (/ _by16Height _height))
                    (if (< _scaleWidth _width)
                        (do
                        (set _scaleX (* _scaleX 2.35))))
                    (if (< _scaleHeight _height)
                        (do
                        (set _scaleY (* _scaleY 2.35))))))
                (set _scaledImage (:jm_createImage2 (this :f_imageScaleUtil) (this :f_imageCache) _image _scaleX 1.0 _scaleY 1.0 true))
                (set _sprite (:jm_createSprite _spriteFactory _scaledImage (JR/d2i (* _width _scaleX)) (JR/d2i (* _height _scaleY)))))))
            (do
            (set _scaledImage (:jm_addImage (this :f_openGLUtil) _image))
            (set _sprite (:jm_createSprite _spriteFactory _scaledImage _width _height))))
        (return jreturn _sprite))))

(set jproto @{:jm_createImage jm_createImage})


