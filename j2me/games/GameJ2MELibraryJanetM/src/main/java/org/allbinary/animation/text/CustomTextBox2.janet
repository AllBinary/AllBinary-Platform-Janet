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
# package org.allbinary.animation.text

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/graphics/form/item/CustomTextBox :as CustomTextBox)

# Java class CustomTextBox2
(var jproto nil)
(var jnew_8 nil)

    
(set jnew_8 (fn jnew_8 [_cmdListener _label _text _maxSize _constraints _font _backgroundBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "CustomTextBox2"} jproto))
        (JR/superInit this (CustomTextBox/jnew_8 _cmdListener _label _text _maxSize _constraints _font _backgroundBasicColor _foregroundBasicColor))
        (JR/className (:jm_getTextFieldItem this))
    this))

(set jproto (table/setproto @{} CustomTextBox/jproto))


