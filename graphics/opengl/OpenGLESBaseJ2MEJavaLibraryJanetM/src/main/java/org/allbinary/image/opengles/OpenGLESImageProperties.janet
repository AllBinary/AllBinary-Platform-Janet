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
# package org.allbinary.image.opengles

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class OpenGLESImageProperties
(var jproto nil)
(var jnew_0 nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OpenGLESImageProperties" :f_textureID 0 :f_scaleX 0.0 :f_scaleY 0.0 :f_scaleX2 0.0 :f_scaleY2 0.0 :f_angle 0 :f_redf 0.0 :f_greenf 0.0 :f_bluef 0.0 :f_alphaf 0.0} jproto))
    (put this :f_textureID (JR/i32 (- 1)))
    (put this :f_scaleX 1.0)
    (put this :f_scaleY 1.0)
    (put this :f_scaleX2 1.0)
    (put this :f_scaleY2 1.0)
    
    (put this :f_redf 1.0)
    (put this :f_greenf 1.0)
    (put this :f_bluef 1.0)
    
    this))


(set jproto @{})


