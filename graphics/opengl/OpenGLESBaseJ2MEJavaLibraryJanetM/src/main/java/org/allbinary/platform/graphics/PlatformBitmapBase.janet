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

# Java class PlatformBitmapBase
(var jproto nil)
(var jnew_0 nil)
(var jm_getImage nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PlatformBitmapBase"} jproto))
    this))

    
(set jm_getImage (fn jm_getImage [this]
    (label jreturn
        (return jreturn (NullImage/jstatic_NULL_IMAGE)))))

(set jproto @{:jm_getImage jm_getImage})


