# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.util

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../java/lang/Character :as Character)

# Java class ABCharacter
(var jproto nil)
(var jnew_0 nil)
(var jm_toString_1 nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ABCharacter"} jproto))
    this))

    
(set jm_toString_1 (fn jm_toString_1 [_ch]
    (label jreturn
        (return jreturn (JR/charString _ch)))))

(set jproto @{})


