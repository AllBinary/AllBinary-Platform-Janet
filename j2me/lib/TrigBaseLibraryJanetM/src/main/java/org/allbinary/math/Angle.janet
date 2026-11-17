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
# package org.allbinary.math

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class Angle
(var jproto nil)
(var jnew_1 nil)
(var jm_getValue nil)

    
(set jnew_1 (fn jnew_1 [_angle]
    (var this (table/setproto @{:jclass "Angle" :f_value 0} jproto))
    
        (set (this :f_value) _angle)
    this))
    
(set jm_getValue (fn jm_getValue [this]
    (label jreturn
        (return jreturn (this :f_value)))))

(set jproto @{:jm_getValue jm_getValue})


