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
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(import ./ShaderUpdater :as ShaderUpdater)

# Java class CompositeShaderUpdater
(var jproto nil)
(var jcell_instanceC :jnone)
(var jstatic_instanceC nil)
(var jsetstatic_instanceC nil)
(var jnew_4 nil)
(var jm_getInstance nil)
(var jm_onSurfaceCreated nil)
(var jm_onSurfaceDestroyed nil)

(set jstatic_instanceC (fn jstatic_instanceC []
  (when (= jcell_instanceC :jnone) (set jcell_instanceC (jnew_4 (:jm_getArrayInstance (StringUtil/jm_getInstance)) (:jm_getArrayInstance (StringUtil/jm_getInstance)) (:jm_getArrayInstance (StringUtil/jm_getInstance)) ((NullUtil/jm_getInstance) :f_NULL_INT_ARRAY))))
  jcell_instanceC))
(set jsetstatic_instanceC (fn jsetstatic_instanceC [value] (set jcell_instanceC value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instanceC)))))
    
(set jnew_4 (fn jnew_4 [_uniformBlockArray _uniformArray _attributeArray _attributeHandleArray]
    (var this (table/setproto @{:jclass "CompositeShaderUpdater" :f_commonSeps nil} jproto))
    (put this :f_commonSeps (CommonSeps/jm_getInstance))
    (JR/superInit this (ShaderUpdater/jnew_0))
    this))
    
(set jm_onSurfaceCreated (fn jm_onSurfaceCreated [this _gl _eglConfig _programHandle]
    nil))
    
(set jm_onSurfaceDestroyed (fn jm_onSurfaceDestroyed [this _gl]
    nil))

(set jproto (table/setproto @{:jm_onSurfaceCreated jm_onSurfaceCreated :jm_onSurfaceDestroyed jm_onSurfaceDestroyed} ShaderUpdater/jproto))


