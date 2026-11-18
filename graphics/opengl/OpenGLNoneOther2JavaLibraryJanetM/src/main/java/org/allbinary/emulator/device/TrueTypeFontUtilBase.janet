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
# package org.allbinary.emulator.device

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class TrueTypeFontUtilBase
(var jproto nil)
(var jnew_1 nil)
(var jm_getAsTextureSize nil)
(var jm_getCellSize nil)

    
(set jnew_1 (fn jnew_1 [_scale]
    (var this (table/setproto @{:jclass "TrueTypeFontUtilBase"} jproto))
    this))
    
(set jm_getAsTextureSize (fn jm_getAsTextureSize [this _textureSize]
    (label jreturn
        (return jreturn (JR/i32 (- 1))))))
    
(set jm_getCellSize (fn jm_getCellSize [this _cellSize]
    (label jreturn
        (return jreturn (JR/i32 (- 1))))))

(set jproto @{:jm_getAsTextureSize jm_getAsTextureSize :jm_getCellSize jm_getCellSize})


