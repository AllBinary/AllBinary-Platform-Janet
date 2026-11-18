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
# package org.allbinary.media.image

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameFeatureImageCacheFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/image/GameFeatureImageCacheFactory" "jm_getInstance" args))

# Java class ImageCreationUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_createImageWH nil)
(var jm_createImage nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ImageCreationUtil"} jproto))
    this))
    
(set jm_createImageWH (fn jm_createImageWH [this _width _height]
    (label jreturn
        (var _image (:jm_get (GameFeatureImageCacheFactory/jm_getInstance) (JR/className this) _width _height))
        (return jreturn _image))))
    
(set jm_createImage (fn jm_createImage [this _width _height _maxScaleX _maxScaleY]
    (label jreturn
        (var _image (:jm_get (GameFeatureImageCacheFactory/jm_getInstance) (JR/className this) (JR/i32 (+ (JR/d2i (* _width _maxScaleX)) 1)) (JR/i32 (+ (JR/d2i (* _height _maxScaleY)) 1))))
        (return jreturn _image))))

(set jproto @{:jm_createImageWH jm_createImageWH :jm_createImage jm_createImage})


