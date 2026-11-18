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
# package org.allbinary.graphics.threed

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class GLHolder
(var jproto nil)
(var jnew_0 nil)
(var jm_runOnSurfaceCreated nil)
(var jm_runOnSurfaceChanged nil)
(var jm_run nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GLHolder" :f_isCreated false} jproto))
    (put this :f_isCreated true)
    this))
    
(set jm_runOnSurfaceCreated (fn jm_runOnSurfaceCreated [this _renderer]
    nil))
    
(set jm_runOnSurfaceChanged (fn jm_runOnSurfaceChanged [this _renderer _width _height]
    nil))
    
(set jm_run (fn jm_run [this _renderer]
    nil))

(set jproto @{:jm_runOnSurfaceCreated jm_runOnSurfaceCreated :jm_runOnSurfaceChanged jm_runOnSurfaceChanged :jm_run jm_run})


