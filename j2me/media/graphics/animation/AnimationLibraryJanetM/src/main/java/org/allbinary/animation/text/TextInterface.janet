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
# package org.allbinary.animation.text

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class TextInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_setTextWithOnMeasure nil)
(var jm_getText nil)
(var jm_setText nil)
(var jm_getFontHeight nil)
(var jm_getWidth nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TextInterface"} jproto))
    this))

    
(set jm_setTextWithOnMeasure (fn jm_setTextWithOnMeasure [this _text _textChangeListener]
    (error (JR/newException "AbstractMethodError" "setTextWithOnMeasure"))))
    
(set jm_getText (fn jm_getText [this]
    (error (JR/newException "AbstractMethodError" "getText"))))
    
(set jm_setText (fn jm_setText [this _text]
    (error (JR/newException "AbstractMethodError" "setText"))))
    
(set jm_getFontHeight (fn jm_getFontHeight [this]
    (error (JR/newException "AbstractMethodError" "getFontHeight"))))
    
(set jm_getWidth (fn jm_getWidth [this]
    (error (JR/newException "AbstractMethodError" "getWidth"))))

(set jproto @{:jm_setTextWithOnMeasure jm_setTextWithOnMeasure :jm_getText jm_getText :jm_setText jm_setText :jm_getFontHeight jm_getFontHeight :jm_getWidth jm_getWidth})


