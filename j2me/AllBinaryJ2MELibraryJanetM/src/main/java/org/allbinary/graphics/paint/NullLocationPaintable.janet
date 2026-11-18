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

# Java class NullLocationPaintable
(var jproto nil)
(var jcell_instanceC :jnone)
(var jstatic_instanceC nil)
(var jsetstatic_instanceC nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instanceC (fn jstatic_instanceC []
  (when (= jcell_instanceC :jnone) (set jcell_instanceC (jnew_0)))
  jcell_instanceC))
(set jsetstatic_instanceC (fn jsetstatic_instanceC [value] (set jcell_instanceC value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullLocationPaintable"} jproto))
    (JR/superInit this (LocationPaintable/jnew_0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instanceC)))))

(set jproto (table/setproto @{} LocationPaintable/jproto))


