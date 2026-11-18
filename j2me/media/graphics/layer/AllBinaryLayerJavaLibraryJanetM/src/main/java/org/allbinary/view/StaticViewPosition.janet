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
# package org.allbinary.view

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./ViewPosition :as ViewPosition)

# Java class StaticViewPosition
(var jproto nil)
(var jnew_3 nil)
(var jm_getX nil)
(var jm_getY nil)
(var jm_getZ nil)

    
(set jnew_3 (fn jnew_3 [_x _y _z]
    (var this (table/setproto @{:jclass "StaticViewPosition"} jproto))
        (JR/superInit this (ViewPosition/jnew_3 _x _y _z))
    this))
    
(set jm_getX (fn jm_getX [this]
    (label jreturn
        (return jreturn (:jm_getRawX this)))))
    
(set jm_getY (fn jm_getY [this]
    (label jreturn
        (return jreturn (:jm_getRawY this)))))
    
(set jm_getZ (fn jm_getZ [this]
    (label jreturn
        (return jreturn (:jm_getRawZ this)))))

(set jproto (table/setproto @{:jm_getX jm_getX :jm_getY jm_getY :jm_getZ jm_getZ} ViewPosition/jproto))


