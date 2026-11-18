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
# package org.allbinary.device

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class GraphicsInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_setFontDebug nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GraphicsInterface"} jproto))
    this))

    
(set jm_setFontDebug (fn jm_setFontDebug [this _font _fontDebug]
    (error (JR/newException "AbstractMethodError" "setFontDebug"))))

(set jproto @{:jm_setFontDebug jm_setFontDebug})


