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
(import ./OpenGLESImageTranslate :as OpenGLESImageTranslate)

# Java class OpenGLESDeviceImageTranslate
(var jproto nil)
(var jnew_0 nil)
(var jm_translate nil)
(var jm_translate2 nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OpenGLESDeviceImageTranslate" :f_translateX 0.0 :f_translateY 0.0 :f_translateX2 0.0 :f_translateY2 0.0} jproto))
    (put this :f_translateX 0.0)
    (put this :f_translateY 0.0)
    (put this :f_translateX2 0.0)
    (put this :f_translateY2 0.0)
    (JR/superInit this (OpenGLESImageTranslate/jnew_0))
    this))

    
(set jm_translate (fn jm_translate [this _gl _openGLESImage _x _y]
        (JR/className (_openGLESImage :f_imageProcessor))))
    
(set jm_translate2 (fn jm_translate2 [this _gl _openGLESImage]
        (JR/className (_openGLESImage :f_imageProcessor))))

(set jproto (table/setproto @{:jm_translate jm_translate :jm_translate2 jm_translate2} OpenGLESImageTranslate/jproto))


