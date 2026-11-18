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
(defn- PlatformBitmapBase/jstatic_NULL_PLATFORM_BITMAP_BASE [& args] (JR/call jfile "./PlatformBitmapBase" "jstatic_NULL_PLATFORM_BITMAP_BASE" args))

# Java class PlatformBitmapBaseFactory
(var jproto nil)
(var jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY :jnone)
(var jstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY nil)
(var jsetstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY nil)
(var jnew_0 nil)
(var jm_createBitmap nil)

(set jstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY (fn jstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY []
  (when (= jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY :jnone) (set jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY (jnew_0)))
  jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY))
(set jsetstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY (fn jsetstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY [value] (set jcell_NULL_PLATFORM_BITMAP_BASE_FACTORY value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PlatformBitmapBaseFactory"} jproto))
    this))

    
(set jm_createBitmap (fn jm_createBitmap [this _image]
    (label jreturn
        (return jreturn (PlatformBitmapBase/jstatic_NULL_PLATFORM_BITMAP_BASE)))))

(set jproto @{:jm_createBitmap jm_createBitmap})


