# Generated Code Do Not Modify
# package org.allbinary.graphics

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../org/allbinary/platform/graphics/PlatformBitmapBase :as PlatformBitmapBase)

# Java class OpenGLBitmap
(var jproto nil)
(var jnew_1 nil)
(var jm_getPixels nil)
(var jm_setPixels nil)
(var jm_recycle nil)

    
(set jnew_1 (fn jnew_1 [_bitmap]
    (var this (table/setproto @{:jclass "OpenGLBitmap" :f_bitmap nil} jproto))
    
    (JR/superInit this (PlatformBitmapBase/jnew_0))
        (set (this :f_bitmap) _bitmap)
    this))
    
(set jm_getPixels (fn jm_getPixels [this _pixels _offset _stride _x _y _width _height]
    nil))
    
(set jm_setPixels (fn jm_setPixels [this _pixels _offset _stride _x _y _width _height]
    nil))
    
(set jm_recycle (fn jm_recycle [this]
    nil))

(set jproto (table/setproto @{:jm_getPixels jm_getPixels :jm_setPixels jm_setPixels :jm_recycle jm_recycle} PlatformBitmapBase/jproto))


