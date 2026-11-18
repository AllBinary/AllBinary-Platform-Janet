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
# package org.allbinary.media.image

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class ImageModifierUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstanceOrCreate nil)
(var jm_setColor nil)
(var jm_changeColor nil)
(var jm_setAlpha nil)
(var jm_getImageArray nil)
(var jm_handleImage nil)
(var jm_reset nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ImageModifierUtil"} jproto))
    this))

    
(set jm_getInstanceOrCreate (fn jm_getInstanceOrCreate []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_setColor (fn jm_setColor [this _unusedOriginalImage _image _imageIndex _basicColor]
    nil))
    
(set jm_changeColor (fn jm_changeColor [this _unusedOriginalImage _image _imageIndex _basicColor]
    nil))
    
(set jm_setAlpha (fn jm_setAlpha [this _originalImage _image _imageIndex _alphaInt]
    nil))
    
(set jm_getImageArray (fn jm_getImageArray [this _originalImageArray]
    (label jreturn
        (return jreturn _originalImageArray))))
    
(set jm_handleImage (fn jm_handleImage [this _imageArray _index _image]
    nil))
    
(set jm_reset (fn jm_reset [this]
    nil))

(set jproto @{:jm_setColor jm_setColor :jm_changeColor jm_changeColor :jm_setAlpha jm_setAlpha :jm_getImageArray jm_getImageArray :jm_handleImage jm_handleImage :jm_reset jm_reset})


