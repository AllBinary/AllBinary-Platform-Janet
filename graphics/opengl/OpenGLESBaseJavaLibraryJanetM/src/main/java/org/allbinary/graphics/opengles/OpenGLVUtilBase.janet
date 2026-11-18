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
# package org.allbinary.graphics.opengles

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class OpenGLVUtilBase
(var jproto nil)
(var jnew_0 nil)
(var jm_glTexEnvix nil)
(var jm_glTexParameterix nil)
(var jm_glGenerateMipmap nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OpenGLVUtilBase"} jproto))
    this))

    
(set jm_glTexEnvix (fn jm_glTexEnvix [this _gl _target _pname _param]
    nil))
    
(set jm_glTexParameterix (fn jm_glTexParameterix [this _gl _target _pname _param]
    nil))
    
(set jm_glGenerateMipmap (fn jm_glGenerateMipmap [this _gl _textureId _target _generateMipMap]
    nil))

(set jproto @{:jm_glTexEnvix jm_glTexEnvix :jm_glTexParameterix jm_glTexParameterix :jm_glGenerateMipmap jm_glGenerateMipmap})


