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
# package org.allbinary.game.displayable.canvas

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class NullDemoPaintable
(var jproto nil)
(var jcell_NULL_DEMO_PAINTABLE :jnone)
(var jstatic_NULL_DEMO_PAINTABLE nil)
(var jsetstatic_NULL_DEMO_PAINTABLE nil)
(var jnew_0 nil)
(var jm_showGamePaintable nil)

(set jstatic_NULL_DEMO_PAINTABLE (fn jstatic_NULL_DEMO_PAINTABLE []
  (when (= jcell_NULL_DEMO_PAINTABLE :jnone) (set jcell_NULL_DEMO_PAINTABLE (jnew_0)))
  jcell_NULL_DEMO_PAINTABLE))
(set jsetstatic_NULL_DEMO_PAINTABLE (fn jsetstatic_NULL_DEMO_PAINTABLE [value] (set jcell_NULL_DEMO_PAINTABLE value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullDemoPaintable"} jproto))
    this))

    
(set jm_showGamePaintable (fn jm_showGamePaintable [this]
    nil))

(set jproto @{:jm_showGamePaintable jm_showGamePaintable})


