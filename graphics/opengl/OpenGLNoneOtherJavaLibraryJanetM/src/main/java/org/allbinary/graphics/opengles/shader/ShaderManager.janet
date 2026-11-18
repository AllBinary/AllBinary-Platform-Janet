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
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class ShaderManager
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_2 nil)
(var jm_getInstance nil)
(var jm_load nil)
(var jm_loadShader nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_2 (JR/i32 (- 1)) (JR/i32 (- 1)))))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_2 (fn jnew_2 [_GL_VERTEX_SHADER _GL_FRAGMENT_SHADER]
    (var this (table/setproto @{:jclass "ShaderManager" :f_LOAD_SHADER nil :f_commonStrings nil :f_GL_VERTEX_SHADER 0 :f_GL_FRAGMENT_SHADER 0} jproto))
    (put this :f_LOAD_SHADER "loadShader")
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    
    
        (set (this :f_GL_VERTEX_SHADER) _GL_VERTEX_SHADER)
        (set (this :f_GL_FRAGMENT_SHADER) _GL_FRAGMENT_SHADER)
    this))
    
(set jm_load (fn jm_load [this _gl _resource _shaderAsStringArray _shaderType]
    (label jreturn
        (return jreturn (JR/i32 (- 1))))))
    
(set jm_loadShader (fn jm_loadShader [this _gl _resource _stringList _shaderType]
    (label jreturn
        (return jreturn (JR/i32 (- 1))))))

(set jproto @{:jm_load jm_load :jm_loadShader jm_loadShader})


