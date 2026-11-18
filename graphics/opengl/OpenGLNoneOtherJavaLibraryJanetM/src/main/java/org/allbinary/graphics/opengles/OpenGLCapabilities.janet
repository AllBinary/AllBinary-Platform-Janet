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
# package org.allbinary.graphics.opengles

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class OpenGLCapabilities
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_isInitialized nil)
(var jm_initCapabilities nil)
(var jm_isGlExtensionDrawTexture nil)
(var jm_getGlVersion nil)
(var jm_isVertexBufferObjectSupport nil)
(var jm_isTextureSizeValid nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OpenGLCapabilities" :f_CUSTOM_GL_SURFACE_VIEW false :f_VERSION_1_0 nil :f_VERSION_1_1 nil :f_VERSION_2_0 nil :f_VERSION_3_0 nil :f_VERSION_3_1 nil :f_VERSION_3_2 nil :f_VERSION_HIGHER_THAN_EXISTS nil :f_glVersion nil :f_shaderVersion 0 :f_glInstanceVersion nil :f_maxTextureSize 0} jproto))
    (put this :f_CUSTOM_GL_SURFACE_VIEW true)
    (put this :f_VERSION_1_0 "1.0")
    (put this :f_VERSION_1_1 "1.1")
    (put this :f_VERSION_2_0 "2.0")
    (put this :f_VERSION_3_0 "3.0")
    (put this :f_VERSION_3_1 "3.1")
    (put this :f_VERSION_3_2 "3.2")
    (put this :f_VERSION_HIGHER_THAN_EXISTS "999.999")
    (put this :f_glVersion ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_shaderVersion 0)
    (put this :f_glInstanceVersion ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_maxTextureSize 64)
    this))
    
(set jm_isInitialized (fn jm_isInitialized [this]
    (label jreturn
        (return jreturn true))))
    
(set jm_initCapabilities (fn jm_initCapabilities [this _gl]
    nil))
    
(set jm_isGlExtensionDrawTexture (fn jm_isGlExtensionDrawTexture [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_getGlVersion (fn jm_getGlVersion [this]
    (label jreturn
        (return jreturn (this :f_glVersion)))))
    
(set jm_isVertexBufferObjectSupport (fn jm_isVertexBufferObjectSupport [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_isTextureSizeValid (fn jm_isTextureSizeValid [this _widthAndHeight]
    (label jreturn
        (return jreturn true))))

(set jproto @{:jm_isInitialized jm_isInitialized :jm_initCapabilities jm_initCapabilities :jm_isGlExtensionDrawTexture jm_isGlExtensionDrawTexture :jm_getGlVersion jm_getGlVersion :jm_isVertexBufferObjectSupport jm_isVertexBufferObjectSupport :jm_isTextureSizeValid jm_isTextureSizeValid})


