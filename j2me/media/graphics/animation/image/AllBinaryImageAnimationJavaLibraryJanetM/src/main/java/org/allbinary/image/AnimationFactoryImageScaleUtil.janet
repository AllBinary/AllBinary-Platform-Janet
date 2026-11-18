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
# package org.allbinary.image

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- ImageJ2MEScaleUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/media/image/ImageJ2MEScaleUtil" "jm_getInstance" args))

# Java class AnimationFactoryImageScaleUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_createImage nil)
(var jm_processAdjust nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AnimationFactoryImageScaleUtil" :f_imageScaleUtil nil} jproto))
    (put this :f_imageScaleUtil (ImageJ2MEScaleUtil/jm_getInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_createImage (fn jm_createImage [this _image _width _height _scaleWidth _scaleHeight]
    (label jreturn
        (var _scaledImage nil)
        (if (and (not= _scaleWidth 0) (not= _scaleHeight 0))
            (do
            (var _scaleX (/ _scaleWidth _width))
            (var _scaleY (/ _scaleHeight _height))
            (if (or (and (= _scaleX 1.0) (= _scaleY 1.0)) (or (= _scaleX 0.0) (= _scaleY 0.0)))
                (do
                (set _scaledImage _image))
                (do
                (var _scaledWidth (JR/d2i (* _scaleX _width)))
                (var _scaledHeight (JR/d2i (* _scaleY _height)))
                (set _scaledImage (:jm_scale (this :f_imageScaleUtil) _image _scaledWidth _scaledHeight)))))
            (do
            (set _scaledImage _image)))
        (return jreturn _scaledImage))))
    
(set jm_processAdjust (fn jm_processAdjust [this _baseImageAnimationFactory]
        (var _scaleProperties (:jm_getScalePropertiesP _baseImageAnimationFactory))
        (if (and (not= (_scaleProperties :f_scaleWidth) 0) (not= (_scaleProperties :f_scaleHeight) 0))
            (do
            (var _animationFactoryInitializationVisitor (:jm_getAnimationFactoryInitializationVisitorP _baseImageAnimationFactory))
            (var _scaleX (/ (_scaleProperties :f_scaleWidth) (_animationFactoryInitializationVisitor :f_width)))
            (var _scaleY (/ (_scaleProperties :f_scaleHeight) (_animationFactoryInitializationVisitor :f_height)))
            (if (or (and (= _scaleX 1.0) (= _scaleY 1.0)) (or (= _scaleX 0.0) (= _scaleY 0.0)))
                (do
                nil)
                (do
                (set (_animationFactoryInitializationVisitor :f_dx) (* (_animationFactoryInitializationVisitor :f_originalDx) _scaleX))
                (set (_animationFactoryInitializationVisitor :f_dy) (* (_animationFactoryInitializationVisitor :f_originalDy) _scaleY)))))
            (do
            nil))))

(set jproto @{:jm_createImage jm_createImage :jm_processAdjust jm_processAdjust})


