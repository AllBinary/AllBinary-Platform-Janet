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
# package org.allbinary.graphics.paint

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./LocationPaintable :as LocationPaintable)

# Java class StringLocationPaintable
(var jproto nil)
(var jnew_1 nil)
(var jm_paintXY nil)

    
(set jnew_1 (fn jnew_1 [_value]
    (var this (table/setproto @{:jclass "StringLocationPaintable" :f_value nil} jproto))
    
    (JR/superInit this (LocationPaintable/jnew_0))
        (set (this :f_value) _value)
    this))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (:jm_drawString _graphics (this :f_value) _x _y 0)))

(set jproto (table/setproto @{:jm_paintXY jm_paintXY} LocationPaintable/jproto))


