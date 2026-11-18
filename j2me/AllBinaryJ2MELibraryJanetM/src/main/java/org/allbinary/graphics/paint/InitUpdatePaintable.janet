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
(import ./Paintable :as Paintable)

# Java class InitUpdatePaintable
(var jproto nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_update nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "InitUpdatePaintable"} jproto))
    (JR/superInit this (Paintable/jnew_0))
    this))
    
(set jm_init (fn jm_init [this]
    nil))
    
(set jm_update (fn jm_update [this]
    nil))

(set jproto (table/setproto @{:jm_init jm_init :jm_update jm_update} Paintable/jproto))


