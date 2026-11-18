# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.animation.caption

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/animation/Animation :as Animation)

# Java class CaptionAnimationHelperBase
(var jproto nil)
(var jcell_INSTANCE :jnone)
(var jstatic_INSTANCE nil)
(var jsetstatic_INSTANCE nil)
(var jnew_0 nil)
(var jm_isShowing nil)
(var jm_tick nil)
(var jm_update nil)
(var jm_paintXY nil)

(set jstatic_INSTANCE (fn jstatic_INSTANCE []
  (when (= jcell_INSTANCE :jnone) (set jcell_INSTANCE (jnew_0)))
  jcell_INSTANCE))
(set jsetstatic_INSTANCE (fn jsetstatic_INSTANCE [value] (set jcell_INSTANCE value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CaptionAnimationHelperBase"} jproto))
    (JR/superInit this (Animation/jnew_0))
    this))

    
(set jm_isShowing (fn jm_isShowing [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_tick (fn jm_tick [this]
    nil))
    
(set jm_update (fn jm_update [this _message _basicColor]
    nil))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
    nil))

(set jproto (table/setproto @{:jm_isShowing jm_isShowing :jm_tick jm_tick :jm_update jm_update :jm_paintXY jm_paintXY} Animation/jproto))


