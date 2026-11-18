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
# package org.allbinary.device

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- OpenGLESGraphicsFactory/jnew_0 [& args] (JR/call jfile "./OpenGLESGraphicsFactory" "jnew_0" args))

# Java class OpenGLESGraphicsCompositeFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_set nil)
(var jm_get nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OpenGLESGraphicsCompositeFactory" :f_openGLESGraphicsFactory nil} jproto))
    (put this :f_openGLESGraphicsFactory (OpenGLESGraphicsFactory/jnew_0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_set (fn jm_set [this _openGLESGraphicsFactory]
        (set (this :f_openGLESGraphicsFactory) _openGLESGraphicsFactory)))
    
(set jm_get (fn jm_get [this]
    (label jreturn
        (return jreturn (this :f_openGLESGraphicsFactory)))))

(set jproto @{:jm_set jm_set :jm_get jm_get})


