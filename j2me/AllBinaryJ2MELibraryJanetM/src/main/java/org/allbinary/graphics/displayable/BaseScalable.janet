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
# package org.allbinary.graphics.displayable

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class BaseScalable
(var jproto nil)
(var jnew_0 nil)
(var jm_getRatio nil)
(var jm_getLeft nil)
(var jm_getTop nil)
(var jm_scale nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BaseScalable"} jproto))
    this))

    
(set jm_getRatio (fn jm_getRatio [this _ratio]
    (label jreturn
        (return jreturn 1))))
    
(set jm_getLeft (fn jm_getLeft [this _xOffset]
    (label jreturn
        (return jreturn (JR/i32 (- 1))))))
    
(set jm_getTop (fn jm_getTop [this _yOffset]
    (label jreturn
        (return jreturn (JR/i32 (- 1))))))
    
(set jm_scale (fn jm_scale [this _ratio]
    nil))

(set jproto @{:jm_getRatio jm_getRatio :jm_getLeft jm_getLeft :jm_getTop jm_getTop :jm_scale jm_scale})


