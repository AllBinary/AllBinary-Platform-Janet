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
# package org.allbinary.graphics.font

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class MyFontProcessor
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_defaultCharWidth nil)
(var jm_defaultStringWidth nil)
(var jm_getInstance nil)
(var jm_process nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MyFontProcessor"} jproto))
    this))

    
(set jm_defaultCharWidth (fn jm_defaultCharWidth [_font]
    (label jreturn
        (return jreturn (:jm_charWidth _font (get "C" 0))))))
    
(set jm_defaultStringWidth (fn jm_defaultStringWidth [_font _size]
    (label jreturn
        (return jreturn (JR/i32 (* (jm_defaultCharWidth _font) _size))))))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_process (fn jm_process [this _graphics]
    nil))

(set jproto @{:jm_process jm_process})


