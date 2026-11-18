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
# package org.allbinary.graphics.opengles.shader

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./OpenGLObject3dProcessor :as OpenGLObject3dProcessor)

# Java class UniformTextureOpenGLProcessor
(var jproto nil)
(var jnew_2 nil)
(var jm_process nil)

    
(set jnew_2 (fn jnew_2 [_shaderComposite _handleIndex]
    (var this (table/setproto @{:jclass "UniformTextureOpenGLProcessor"} jproto))
    (JR/superInit this (OpenGLObject3dProcessor/jnew_0))
    this))
    
(set jm_process (fn jm_process [this _gl _unused _index]
    nil))

(set jproto (table/setproto @{:jm_process jm_process} OpenGLObject3dProcessor/jproto))


