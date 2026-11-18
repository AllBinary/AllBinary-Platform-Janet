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
# package org.allbinary.graphics

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class RendererStateFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_setLoaded nil)
(var jm_isLoaded nil)
(var jm_setSurfaceChanged nil)
(var jm_isSurfaceChanged nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "RendererStateFactory" :f_loaded false :f_surfaceChanged false} jproto))
    (put this :f_loaded false)
    (put this :f_surfaceChanged false)
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_setLoaded (fn jm_setLoaded [this _loaded]
        (set (this :f_loaded) _loaded)))
    
(set jm_isLoaded (fn jm_isLoaded [this]
    (label jreturn
        (return jreturn (this :f_loaded)))))
    
(set jm_setSurfaceChanged (fn jm_setSurfaceChanged [this _initialized]
        (set (this :f_surfaceChanged) _initialized)))
    
(set jm_isSurfaceChanged (fn jm_isSurfaceChanged [this]
    (label jreturn
        (return jreturn (this :f_surfaceChanged)))))

(set jproto @{:jm_setLoaded jm_setLoaded :jm_isLoaded jm_isLoaded :jm_setSurfaceChanged jm_setSurfaceChanged :jm_isSurfaceChanged jm_isSurfaceChanged})


