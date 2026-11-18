#
# AllBinary Open License Version 1
# Copyright (c) 2023 AllBinary
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
# package org.allbinary.media.image

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Image/jm_createRGBImage [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Image" "jm_createRGBImage" args))

# Java class ImageJ2MEScaleUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_scaleArray nil)
(var jm_scale nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ImageJ2MEScaleUtil"} jproto))
    this))
    
(set jm_scaleArray (fn jm_scaleArray [this _images _width _height]
    (label jreturn
        (var _scaledImages (array/new-filled (length _images) nil))
        (do
            (var _index (length _images))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (set (_scaledImages _index) (:jm_scale this (_images _index) _width _height)))))
        (return jreturn _scaledImages))))
    
(set jm_scale (fn jm_scale [this _image _width _height]
    (label jreturn
        (var _sourceWidth (:jm_getWidth _image))
        (var _sourceHeight (:jm_getHeight _image))
        (var _originalData (array/new-filled (JR/i32 (* (:jm_getWidth _image) (:jm_getHeight _image))) 0))
        (:jm_getRGB _image _originalData 0 (:jm_getWidth _image) 0 0 (:jm_getWidth _image) (:jm_getHeight _image))
        (var _scaledData (array/new-filled (JR/i32 (* _width _height)) 0))
        (var _heightRatioFactor (JR/idiv (JR/i32 (* 8 _sourceHeight)) _height))
        (var _widthRatioFactor (JR/idiv (JR/i32 (* 8 _sourceWidth)) _width))
        (var _scaledIndex (JR/i32 (- (length _scaledData) 1)))
        (var _dx 0)
        (var _dy 0)
        (do
            (var _index _height)
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (set _dy (brshift (JR/i32 (* _index _heightRatioFactor)) 3))
            (do
                (var _index2 _width)
                (while (>= (set _index2 (JR/i32 (- _index2 1))) 0)
                    (do
                (set _dx (brshift (JR/i32 (* _index2 _widthRatioFactor)) 3))
                (set (_scaledData (do (def jold _scaledIndex) (set _scaledIndex (JR/i32 (- _scaledIndex 1))) jold)) (_originalData (JR/i32 (+ (JR/i32 (* _sourceWidth _dy)) _dx))))))))))
        (var _scaledImage (Image/jm_createRGBImage _scaledData _width _height true))
        (return jreturn _scaledImage))))

(set jproto @{:jm_scaleArray jm_scaleArray :jm_scale jm_scale})


