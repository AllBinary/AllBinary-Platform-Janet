# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.image.opengles

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../java/io/IOException :as IOException)
(import ../../../../java/io/InputStream :as InputStream)

# Java class OpenGLImageUtilBase
(var jproto nil)
(var jnew_0 nil)
(var jm_paint_3 nil)
(var jm_paint_4 nil)
(var jm_createImage nil)
(var jm_createImageFromInputStream nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OpenGLImageUtilBase"} jproto))
    this))

    
(set jm_paint_3 (fn jm_paint_3 [this _alphaBitmap _originalBitmap _index]
        (error (JR/newException "RuntimeException"))))
    
(set jm_paint_4 (fn jm_paint_4 [this _colorBitmap _originalBitmap _alpha _basicColor]
        (error (JR/newException "RuntimeException"))))
    
(set jm_createImage (fn jm_createImage [this _name]
        (error (JR/newException "RuntimeException"))))
    
(set jm_createImageFromInputStream (fn jm_createImageFromInputStream [this _inputStream]
        (error (JR/newException "RuntimeException"))))

(set jproto @{:jm_paint_3 jm_paint_3 :jm_paint_4 jm_paint_4 :jm_createImage jm_createImage :jm_createImageFromInputStream jm_createImageFromInputStream})


