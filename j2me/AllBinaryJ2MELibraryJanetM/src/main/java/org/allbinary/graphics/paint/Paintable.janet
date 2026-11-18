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

# Java class Paintable
(var jproto nil)
(var jnew_0 nil)
(var jm_setBasicColorP nil)
(var jm_paint nil)
(var jm_paintThreed nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "Paintable"} jproto))
    this))

    
(set jm_setBasicColorP (fn jm_setBasicColorP [this _basicColor]
    nil))
    
(set jm_paint (fn jm_paint [this _graphics]
    nil))
    
(set jm_paintThreed (fn jm_paintThreed [this _graphics]
    nil))

(set jproto @{:jm_setBasicColorP jm_setBasicColorP :jm_paint jm_paint :jm_paintThreed jm_paintThreed})


