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
# package org.allbinary.graphics.opengles.renderer

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class RendererStrings
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "RendererStrings" :f_ON_SURFACE_CREATED nil :f_ON_SURFACE_CHANGED nil :f_ON_DRAW_FRAME nil :f_ON_DRAW_FRAME_THREED nil :f_ON_DRAW_FRAME_2D nil} jproto))
    (put this :f_ON_SURFACE_CREATED "onSurfaceCreated")
    (put this :f_ON_SURFACE_CHANGED "onSurfaceChanged")
    (put this :f_ON_DRAW_FRAME "onDrawFrame")
    (put this :f_ON_DRAW_FRAME_THREED "onDrawFrameThreed")
    (put this :f_ON_DRAW_FRAME_2D "onDrawFrame2d")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


