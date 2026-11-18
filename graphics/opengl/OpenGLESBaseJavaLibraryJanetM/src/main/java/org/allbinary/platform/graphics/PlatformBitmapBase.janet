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
# package org.allbinary.platform.graphics

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullImage/jstatic_NULL_IMAGE [& args] (JR/call jfile "../../../../javax/microedition/lcdui/NullImage" "jstatic_NULL_IMAGE" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))

# Java class PlatformBitmapBase
(var jproto nil)
(var jcell_NULL_PLATFORM_BITMAP_BASE :jnone)
(var jstatic_NULL_PLATFORM_BITMAP_BASE nil)
(var jsetstatic_NULL_PLATFORM_BITMAP_BASE nil)
(var jnew_0 nil)
(var jm_getWidth nil)
(var jm_getHeight nil)
(var jm_getImage nil)

(set jstatic_NULL_PLATFORM_BITMAP_BASE (fn jstatic_NULL_PLATFORM_BITMAP_BASE []
  (when (= jcell_NULL_PLATFORM_BITMAP_BASE :jnone) (set jcell_NULL_PLATFORM_BITMAP_BASE (jnew_0)))
  jcell_NULL_PLATFORM_BITMAP_BASE))
(set jsetstatic_NULL_PLATFORM_BITMAP_BASE (fn jsetstatic_NULL_PLATFORM_BITMAP_BASE [value] (set jcell_NULL_PLATFORM_BITMAP_BASE value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PlatformBitmapBase" :f_alpha 0 :f_basicColor nil} jproto))
    (put this :f_alpha 255)
    (put this :f_basicColor ((BasicColorFactory/jm_getInstance) :f_NULL_COLOR))
    this))

    
(set jm_getWidth (fn jm_getWidth [this]
    (label jreturn
        (return jreturn 0))))
    
(set jm_getHeight (fn jm_getHeight [this]
    (label jreturn
        (return jreturn 0))))
    
(set jm_getImage (fn jm_getImage [this]
    (label jreturn
        (return jreturn (NullImage/jstatic_NULL_IMAGE)))))

(set jproto @{:jm_getWidth jm_getWidth :jm_getHeight jm_getHeight :jm_getImage jm_getImage})


