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
# package org.allbinary.graphics.color

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class BasicColorUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getRGB nil)
(var jm_getARGB nil)
(var jm_get nil)
(var jm_invert nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicColorUtil" :f_ZERO_ARRAY nil :f_ALPHA 0 :f_isAlpha false :f_ffOpaque false} jproto))
    (put this :f_ZERO_ARRAY (array/new-filled 0 nil))
    (put this :f_ALPHA 0xFF000000)
    (put this :f_isAlpha true)
    (put this :f_ffOpaque true)
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getRGB (fn jm_getRGB [this _red _green _blue]
    (label jreturn
        (var _value 0)
        (if (this :f_isAlpha)
            (do
            (if (this :f_ffOpaque)
                (do
                (set _value (this :f_ALPHA))))))
        (set _value (bor (JR/i32 (blshift _red 16)) _value))
        (set _value (bor (JR/i32 (blshift _green 8)) _value))
        (set _value (bor _blue _value))
        (return jreturn _value))))
    
(set jm_getARGB (fn jm_getARGB [this _alphaValue _r _g _b]
    (label jreturn
        (return jreturn (JR/i32 (+ (JR/i32 (+ (JR/i32 (+ (band (JR/i32 (blshift _alphaValue 24)) (this :f_ALPHA)) (band (JR/i32 (blshift _r 16)) 0x00FF0000))) (band (JR/i32 (blshift _g 8)) 0x0000FF00))) (band _b 0x000000FF)))))))
    
(set jm_get (fn jm_get [this _alphaValue _color]
    (label jreturn
        (return jreturn (JR/i32 (+ (band (JR/i32 (blshift _alphaValue 24)) (this :f_ALPHA)) _color))))))
    
(set jm_invert (fn jm_invert [this _color]
    (label jreturn
        (return jreturn (bor (JR/i32 (- 0xFFFFFF _color)) (this :f_ALPHA))))))

(set jproto @{:jm_getRGB jm_getRGB :jm_getARGB jm_getARGB :jm_get jm_get :jm_invert jm_invert})


