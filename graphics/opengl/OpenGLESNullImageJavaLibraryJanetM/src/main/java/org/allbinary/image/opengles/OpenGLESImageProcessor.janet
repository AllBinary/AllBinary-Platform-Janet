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
# package org.allbinary.image.opengles

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class OpenGLESImageProcessor
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_translate nil)
(var jm_rotate nil)
(var jm_scale nil)
(var jm_colorMask nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OpenGLESImageProcessor"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_translate (fn jm_translate [this _gl _translateX _translateY]
    nil))
    
(set jm_rotate (fn jm_rotate [this _gl _angle]
    nil))
    
(set jm_scale (fn jm_scale [this _gl _scaleX _scaleY]
    nil))
    
(set jm_colorMask (fn jm_colorMask [this _gl _red _green _blue _alpha]
    nil))

(set jproto @{:jm_translate jm_translate :jm_rotate jm_rotate :jm_scale jm_scale :jm_colorMask jm_colorMask})


