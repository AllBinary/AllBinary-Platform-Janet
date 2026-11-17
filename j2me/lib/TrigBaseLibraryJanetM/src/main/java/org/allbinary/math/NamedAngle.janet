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
# package org.allbinary.math

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./Angle :as Angle)

# Java class NamedAngle
(var jproto nil)
(var jnew_2 nil)

    
(set jnew_2 (fn jnew_2 [_angle _name]
    (var this (table/setproto @{:jclass "NamedAngle" :f_name nil} jproto))
    
        nil
        (set (this :f_name) _name)
    this))

(set jproto (table/setproto @{} Angle/jproto))


