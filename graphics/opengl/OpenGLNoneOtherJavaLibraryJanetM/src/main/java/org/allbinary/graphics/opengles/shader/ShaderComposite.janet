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
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- NullOpenGLTextureProcessor/jm_getInstance [& args] (JR/call jfile "./NullOpenGLTextureProcessor" "jm_getInstance" args))

# Java class ShaderComposite
(var jproto nil)
(var jnew_8 nil)
(var jm_init nil)

    
(set jnew_8 (fn jnew_8 [_requiresOpenGLVersion _shaderArray _compositeShaderUpdater _shaderInitializer _modelViewProjection _colorOpenGLProcessor _vertexOpenGLProcessor _disableProgramShaderOpenGLProcessor]
    (var this (table/setproto @{:jclass "ShaderComposite" :f_disableProgramShaderOpenGLProcessor nil :f_requiresOpenGLVersion nil :f_shaderArray nil :f_shaderInitializer nil :f_compositeShaderUpdater nil :f_modelViewProjection nil :f_colorOpenGLProcessor nil :f_vertexOpenGLProcessor nil :f_useProgramShaderOpenGLProcessor nil :f_shaderMatrixOpenGLProcessor nil :f_colorEnableVertexAttribArrayOpenGLProcessor nil :f_normalEnableVertexAttribArrayOpenGLProcessor nil :f_vertexEnableVertexAttribArrayOpenGLProcessor nil :f_textureEnableVertexAttribArrayOpenGLProcessor nil :f_colorDisableVertexAttribArrayOpenGLProcessor nil :f_normalDisableVertexAttribArrayOpenGLProcessor nil :f_vertexDisableVertexAttribArrayOpenGLProcessor nil :f_textureDisableVertexAttribArrayOpenGLProcessor nil :f_uniformLightPositionOpenGLProcessor nil :f_uniformLightColorOpenGLProcessor nil :f_uniformCameraPositionOpenGLProcessor nil :f_uniformTextureUnitOpenGLProcessor nil :f_programHandle 0} jproto))
    
    
    
    
    
    
    
    
    (put this :f_useProgramShaderOpenGLProcessor (NullOpenGLProcessorFactory/jm_getInstance))
    (put this :f_shaderMatrixOpenGLProcessor (NullOpenGLProcessorFactory/jm_getInstance))
    (put this :f_colorEnableVertexAttribArrayOpenGLProcessor (NullOpenGLProcessorFactory/jm_getInstance))
    (put this :f_normalEnableVertexAttribArrayOpenGLProcessor (NullOpenGLProcessorFactory/jm_getInstance))
    (put this :f_vertexEnableVertexAttribArrayOpenGLProcessor (NullOpenGLProcessorFactory/jm_getInstance))
    (put this :f_textureEnableVertexAttribArrayOpenGLProcessor (NullOpenGLProcessorFactory/jm_getInstance))
    (put this :f_colorDisableVertexAttribArrayOpenGLProcessor (NullOpenGLProcessorFactory/jm_getInstance))
    (put this :f_normalDisableVertexAttribArrayOpenGLProcessor (NullOpenGLProcessorFactory/jm_getInstance))
    (put this :f_vertexDisableVertexAttribArrayOpenGLProcessor (NullOpenGLProcessorFactory/jm_getInstance))
    (put this :f_textureDisableVertexAttribArrayOpenGLProcessor (NullOpenGLProcessorFactory/jm_getInstance))
    (put this :f_uniformLightPositionOpenGLProcessor (NullOpenGLTextureProcessor/jm_getInstance))
    (put this :f_uniformLightColorOpenGLProcessor (NullOpenGLTextureProcessor/jm_getInstance))
    (put this :f_uniformCameraPositionOpenGLProcessor (NullOpenGLTextureProcessor/jm_getInstance))
    (put this :f_uniformTextureUnitOpenGLProcessor (NullOpenGLTextureProcessor/jm_getInstance))
    
        (set (this :f_requiresOpenGLVersion) _requiresOpenGLVersion)
        (set (this :f_shaderArray) _shaderArray)
        (set (this :f_shaderInitializer) _shaderInitializer)
        (set (this :f_compositeShaderUpdater) _compositeShaderUpdater)
        (set (this :f_modelViewProjection) _modelViewProjection)
        (set (this :f_colorOpenGLProcessor) _colorOpenGLProcessor)
        (set (this :f_vertexOpenGLProcessor) _vertexOpenGLProcessor)
        (set (this :f_disableProgramShaderOpenGLProcessor) _disableProgramShaderOpenGLProcessor)
    this))
    
(set jm_init (fn jm_init [this _gl]
        (set (this :f_programHandle) (:jm_init (this :f_shaderInitializer) _gl (this :f_shaderArray) (:jm_getArrayInstance (StringUtil/jm_getInstance))))))

(set jproto @{:jm_init jm_init})


