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
(defn- NullOpenGLProcessorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/opengles/NullOpenGLProcessorFactory" "jm_getInstance" args))
(import ./ShaderComposite :as ShaderComposite)

# Java class PlatformShaderComposite
(var jproto nil)
(var jnew_7 nil)

    
(set jnew_7 (fn jnew_7 [_requiresOpenGLVersion _shaderArray _compositeShaderUpdater _shaderInitializer _modelViewProjection _colorOpenGLProcessor _vertexOpenGLProcessor]
    (var this (table/setproto @{:jclass "PlatformShaderComposite"} jproto))
        (JR/superInit this (ShaderComposite/jnew_8 _requiresOpenGLVersion _shaderArray _compositeShaderUpdater _shaderInitializer _modelViewProjection _colorOpenGLProcessor _vertexOpenGLProcessor (NullOpenGLProcessorFactory/jm_getInstance)))
    this))

(set jproto (table/setproto @{} ShaderComposite/jproto))


